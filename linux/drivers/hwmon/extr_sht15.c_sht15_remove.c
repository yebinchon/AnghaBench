
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sht15_data {int read_lock; int reg; int nb; int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EFAULT ;
 int IS_ERR (int ) ;
 int hwmon_device_unregister (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sht15_data* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 int regulator_unregister_notifier (int ,int *) ;
 int sht15_attr_group ;
 scalar_t__ sht15_soft_reset (struct sht15_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int sht15_remove(struct platform_device *pdev)
{
 struct sht15_data *data = platform_get_drvdata(pdev);





 mutex_lock(&data->read_lock);
 if (sht15_soft_reset(data)) {
  mutex_unlock(&data->read_lock);
  return -EFAULT;
 }
 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&pdev->dev.kobj, &sht15_attr_group);
 if (!IS_ERR(data->reg)) {
  regulator_unregister_notifier(data->reg, &data->nb);
  regulator_disable(data->reg);
 }

 mutex_unlock(&data->read_lock);

 return 0;
}
