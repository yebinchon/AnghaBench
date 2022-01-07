
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_data {int gdev; int vcc; scalar_t__ on_off; int irq; scalar_t__ wakeup; } ;
struct serdev_device {int dev; } ;


 int CONFIG_PM ;
 scalar_t__ IS_ENABLED (int ) ;
 int free_irq (int ,struct sirf_data*) ;
 int gnss_deregister_device (int ) ;
 int gnss_put_device (int ) ;
 int pm_runtime_disable (int *) ;
 int regulator_disable (int ) ;
 struct sirf_data* serdev_device_get_drvdata (struct serdev_device*) ;
 int sirf_runtime_suspend (int *) ;

__attribute__((used)) static void sirf_remove(struct serdev_device *serdev)
{
 struct sirf_data *data = serdev_device_get_drvdata(serdev);

 gnss_deregister_device(data->gdev);

 if (IS_ENABLED(CONFIG_PM))
  pm_runtime_disable(&serdev->dev);
 else
  sirf_runtime_suspend(&serdev->dev);

 if (data->wakeup)
  free_irq(data->irq, data);

 if (data->on_off)
  regulator_disable(data->vcc);

 gnss_put_device(data->gdev);
}
