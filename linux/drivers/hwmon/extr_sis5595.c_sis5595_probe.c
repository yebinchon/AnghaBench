
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sis5595_data {char* name; scalar_t__ revision; int maxins; int hwmon_dev; int * fan_min; int addr; int update_lock; int lock; } ;
struct resource {int start; } ;
struct TYPE_11__ {int kobj; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_10__ {scalar_t__ revision; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_9__ {TYPE_1__ driver; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ REV2MIN ;
 int SIS5595_EXTENT ;
 int SIS5595_PIN_REG ;
 int SIS5595_REG_FAN_MIN (int) ;
 struct sis5595_data* devm_kzalloc (TYPE_5__*,int,int ) ;
 int devm_request_region (TYPE_5__*,int ,int ,int ) ;
 int hwmon_device_register (TYPE_5__*) ;
 int mutex_init (int *) ;
 int pci_read_config_byte (TYPE_3__*,int ,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sis5595_data*) ;
 TYPE_3__* s_bridge ;
 TYPE_2__ sis5595_driver ;
 int sis5595_group ;
 int sis5595_group_in4 ;
 int sis5595_group_temp1 ;
 int sis5595_init_device (struct sis5595_data*) ;
 int sis5595_read_value (struct sis5595_data*,int ) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int sis5595_probe(struct platform_device *pdev)
{
 int err = 0;
 int i;
 struct sis5595_data *data;
 struct resource *res;
 char val;


 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!devm_request_region(&pdev->dev, res->start, SIS5595_EXTENT,
     sis5595_driver.driver.name))
  return -EBUSY;

 data = devm_kzalloc(&pdev->dev, sizeof(struct sis5595_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 mutex_init(&data->lock);
 mutex_init(&data->update_lock);
 data->addr = res->start;
 data->name = "sis5595";
 platform_set_drvdata(pdev, data);




 data->revision = s_bridge->revision;

 data->maxins = 3;
 if (data->revision >= REV2MIN) {
  pci_read_config_byte(s_bridge, SIS5595_PIN_REG, &val);
  if (!(val & 0x80))

   data->maxins = 4;
 }


 sis5595_init_device(data);


 for (i = 0; i < 2; i++) {
  data->fan_min[i] = sis5595_read_value(data,
     SIS5595_REG_FAN_MIN(i));
 }


 err = sysfs_create_group(&pdev->dev.kobj, &sis5595_group);
 if (err)
  return err;
 if (data->maxins == 4) {
  err = sysfs_create_group(&pdev->dev.kobj, &sis5595_group_in4);
  if (err)
   goto exit_remove_files;
 } else {
  err = sysfs_create_group(&pdev->dev.kobj, &sis5595_group_temp1);
  if (err)
   goto exit_remove_files;
 }

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

exit_remove_files:
 sysfs_remove_group(&pdev->dev.kobj, &sis5595_group);
 sysfs_remove_group(&pdev->dev.kobj, &sis5595_group_in4);
 sysfs_remove_group(&pdev->dev.kobj, &sis5595_group_temp1);
 return err;
}
