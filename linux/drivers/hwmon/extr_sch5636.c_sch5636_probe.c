
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sch5636_data {int* temp_ctrl; int* fan_ctrl; int update_lock; int addr; int watchdog; int * hwmon_dev; } ;
struct platform_device {int dev; } ;
struct TYPE_9__ {int start; } ;
struct TYPE_8__ {int dev_attr; } ;
struct TYPE_7__ {int dev_attr; } ;
struct TYPE_6__ {int dev_attr; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int DEVNAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int SCH5636_FAN_DEACTIVATED ;
 int SCH5636_NO_FANS ;
 int SCH5636_NO_TEMPS ;
 scalar_t__ SCH5636_REG_FAN_CTRL (int) ;
 scalar_t__ SCH5636_REG_FUJITSU_ID ;
 scalar_t__ SCH5636_REG_FUJITSU_REV ;
 scalar_t__ SCH5636_REG_TEMP_CTRL (int) ;
 int SCH5636_TEMP_DEACTIVATED ;
 int device_create_file (int *,int *) ;
 struct sch5636_data* devm_kzalloc (int *,int,int ) ;
 int * hwmon_device_register (int *) ;
 int mutex_init (int *) ;
 TYPE_4__* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sch5636_data*) ;
 int pr_err (char*,char,...) ;
 int pr_info (char*,int ,int ,int,int) ;
 TYPE_3__* sch5636_attr ;
 TYPE_2__* sch5636_fan_attr ;
 int sch5636_remove (struct platform_device*) ;
 TYPE_1__* sch5636_temp_attr ;
 int sch56xx_read_virtual_reg (int ,scalar_t__) ;
 int sch56xx_watchdog_register (int *,int ,int,int *,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sch5636_probe(struct platform_device *pdev)
{
 struct sch5636_data *data;
 int i, err, val, revision[2];
 char id[4];

 data = devm_kzalloc(&pdev->dev, sizeof(struct sch5636_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->addr = platform_get_resource(pdev, IORESOURCE_IO, 0)->start;
 mutex_init(&data->update_lock);
 platform_set_drvdata(pdev, data);

 for (i = 0; i < 3; i++) {
  val = sch56xx_read_virtual_reg(data->addr,
            SCH5636_REG_FUJITSU_ID + i);
  if (val < 0) {
   pr_err("Could not read Fujitsu id byte at %#x\n",
    SCH5636_REG_FUJITSU_ID + i);
   err = val;
   goto error;
  }
  id[i] = val;
 }
 id[i] = '\0';

 if (strcmp(id, "THS")) {
  pr_err("Unknown Fujitsu id: %02x%02x%02x\n",
         id[0], id[1], id[2]);
  err = -ENODEV;
  goto error;
 }

 for (i = 0; i < 2; i++) {
  val = sch56xx_read_virtual_reg(data->addr,
            SCH5636_REG_FUJITSU_REV + i);
  if (val < 0) {
   err = val;
   goto error;
  }
  revision[i] = val;
 }
 pr_info("Found %s chip at %#hx, revision: %d.%02d\n", DEVNAME,
  data->addr, revision[0], revision[1]);


 for (i = 0; i < SCH5636_NO_TEMPS; i++) {
  val = sch56xx_read_virtual_reg(data->addr,
            SCH5636_REG_TEMP_CTRL(i));
  if (unlikely(val < 0)) {
   err = val;
   goto error;
  }
  data->temp_ctrl[i] = val;
 }

 for (i = 0; i < SCH5636_NO_FANS; i++) {
  val = sch56xx_read_virtual_reg(data->addr,
            SCH5636_REG_FAN_CTRL(i));
  if (unlikely(val < 0)) {
   err = val;
   goto error;
  }
  data->fan_ctrl[i] = val;
 }

 for (i = 0; i < ARRAY_SIZE(sch5636_attr); i++) {
  err = device_create_file(&pdev->dev,
      &sch5636_attr[i].dev_attr);
  if (err)
   goto error;
 }

 for (i = 0; i < (SCH5636_NO_TEMPS * 3); i++) {
  if (data->temp_ctrl[i/3] & SCH5636_TEMP_DEACTIVATED)
   continue;

  err = device_create_file(&pdev->dev,
     &sch5636_temp_attr[i].dev_attr);
  if (err)
   goto error;
 }

 for (i = 0; i < (SCH5636_NO_FANS * 3); i++) {
  if (data->fan_ctrl[i/3] & SCH5636_FAN_DEACTIVATED)
   continue;

  err = device_create_file(&pdev->dev,
     &sch5636_fan_attr[i].dev_attr);
  if (err)
   goto error;
 }

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  data->hwmon_dev = ((void*)0);
  goto error;
 }


 data->watchdog = sch56xx_watchdog_register(&pdev->dev, data->addr,
     (revision[0] << 8) | revision[1],
     &data->update_lock, 0);

 return 0;

error:
 sch5636_remove(pdev);
 return err;
}
