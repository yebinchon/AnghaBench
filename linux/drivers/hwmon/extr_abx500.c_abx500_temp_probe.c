
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {scalar_t__ irq_handler; int show_label; int show_name; int read_sensor; } ;
struct abx500_temp {int hwmon_dev; TYPE_1__ ops; int work; int lock; struct platform_device* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int abx500_hwmon_init (struct abx500_temp*) ;
 int abx500_temp_group ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct abx500_temp* devm_kzalloc (TYPE_2__*,int,int ) ;
 int gpadc_monitor ;
 int hwmon_device_register (TYPE_2__*) ;
 int hwmon_device_unregister (int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct abx500_temp*) ;
 int setup_irqs (struct platform_device*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int abx500_temp_probe(struct platform_device *pdev)
{
 struct abx500_temp *data;
 int err;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->pdev = pdev;
 mutex_init(&data->lock);


 err = abx500_hwmon_init(data);
 if (err < 0 || !data->ops.read_sensor || !data->ops.show_name ||
   !data->ops.show_label)
  return err;

 INIT_DEFERRABLE_WORK(&data->work, gpadc_monitor);

 platform_set_drvdata(pdev, data);

 err = sysfs_create_group(&pdev->dev.kobj, &abx500_temp_group);
 if (err < 0) {
  dev_err(&pdev->dev, "Create sysfs group failed (%d)\n", err);
  return err;
 }

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  dev_err(&pdev->dev, "Class registration failed (%d)\n", err);
  goto exit_sysfs_group;
 }

 if (data->ops.irq_handler) {
  err = setup_irqs(pdev);
  if (err < 0)
   goto exit_hwmon_reg;
 }
 return 0;

exit_hwmon_reg:
 hwmon_device_unregister(data->hwmon_dev);
exit_sysfs_group:
 sysfs_remove_group(&pdev->dev.kobj, &abx500_temp_group);
 return err;
}
