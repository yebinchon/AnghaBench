
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sch5627_data {int control; int update_lock; int addr; int watchdog; int * hwmon_dev; int last_battery; } ;
struct TYPE_5__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int start; } ;


 int DEVNAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int SCH5627_COMPANY_ID ;
 int SCH5627_HWMON_ID ;
 int SCH5627_PRIMARY_ID ;
 int SCH5627_REG_BUILD_CODE ;
 int SCH5627_REG_BUILD_ID ;
 int SCH5627_REG_COMPANY_ID ;
 int SCH5627_REG_CTRL ;
 int SCH5627_REG_HWMON_ID ;
 int SCH5627_REG_HWMON_REV ;
 int SCH5627_REG_PRIMARY_ID ;
 struct sch5627_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int * hwmon_device_register (TYPE_1__*) ;
 int jiffies ;
 int mutex_init (int *) ;
 TYPE_2__* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sch5627_data*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int,int,...) ;
 int sch5627_group ;
 int sch5627_read_limits (struct sch5627_data*) ;
 int sch5627_remove (struct platform_device*) ;
 int sch56xx_read_virtual_reg (int ,int ) ;
 int sch56xx_read_virtual_reg16 (int ,int ) ;
 int sch56xx_watchdog_register (TYPE_1__*,int ,int,int *,int) ;
 int sch56xx_write_virtual_reg (int ,int ,int) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int sch5627_probe(struct platform_device *pdev)
{
 struct sch5627_data *data;
 int err, build_code, build_id, hwmon_rev, val;

 data = devm_kzalloc(&pdev->dev, sizeof(struct sch5627_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->addr = platform_get_resource(pdev, IORESOURCE_IO, 0)->start;
 mutex_init(&data->update_lock);
 platform_set_drvdata(pdev, data);

 val = sch56xx_read_virtual_reg(data->addr, SCH5627_REG_HWMON_ID);
 if (val < 0) {
  err = val;
  goto error;
 }
 if (val != SCH5627_HWMON_ID) {
  pr_err("invalid %s id: 0x%02X (expected 0x%02X)\n", "hwmon",
         val, SCH5627_HWMON_ID);
  err = -ENODEV;
  goto error;
 }

 val = sch56xx_read_virtual_reg(data->addr, SCH5627_REG_COMPANY_ID);
 if (val < 0) {
  err = val;
  goto error;
 }
 if (val != SCH5627_COMPANY_ID) {
  pr_err("invalid %s id: 0x%02X (expected 0x%02X)\n", "company",
         val, SCH5627_COMPANY_ID);
  err = -ENODEV;
  goto error;
 }

 val = sch56xx_read_virtual_reg(data->addr, SCH5627_REG_PRIMARY_ID);
 if (val < 0) {
  err = val;
  goto error;
 }
 if (val != SCH5627_PRIMARY_ID) {
  pr_err("invalid %s id: 0x%02X (expected 0x%02X)\n", "primary",
         val, SCH5627_PRIMARY_ID);
  err = -ENODEV;
  goto error;
 }

 build_code = sch56xx_read_virtual_reg(data->addr,
           SCH5627_REG_BUILD_CODE);
 if (build_code < 0) {
  err = build_code;
  goto error;
 }

 build_id = sch56xx_read_virtual_reg16(data->addr,
           SCH5627_REG_BUILD_ID);
 if (build_id < 0) {
  err = build_id;
  goto error;
 }

 hwmon_rev = sch56xx_read_virtual_reg(data->addr,
          SCH5627_REG_HWMON_REV);
 if (hwmon_rev < 0) {
  err = hwmon_rev;
  goto error;
 }

 val = sch56xx_read_virtual_reg(data->addr, SCH5627_REG_CTRL);
 if (val < 0) {
  err = val;
  goto error;
 }
 data->control = val;
 if (!(data->control & 0x01)) {
  pr_err("hardware monitoring not enabled\n");
  err = -ENODEV;
  goto error;
 }


 sch56xx_write_virtual_reg(data->addr, SCH5627_REG_CTRL,
      data->control | 0x10);
 data->last_battery = jiffies;





 err = sch5627_read_limits(data);
 if (err)
  goto error;

 pr_info("found %s chip at %#hx\n", DEVNAME, data->addr);
 pr_info("firmware build: code 0x%02X, id 0x%04X, hwmon: rev 0x%02X\n",
  build_code, build_id, hwmon_rev);


 err = sysfs_create_group(&pdev->dev.kobj, &sch5627_group);
 if (err)
  goto error;

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  data->hwmon_dev = ((void*)0);
  goto error;
 }


 data->watchdog = sch56xx_watchdog_register(&pdev->dev, data->addr,
   (build_code << 24) | (build_id << 8) | hwmon_rev,
   &data->update_lock, 1);

 return 0;

error:
 sch5627_remove(pdev);
 return err;
}
