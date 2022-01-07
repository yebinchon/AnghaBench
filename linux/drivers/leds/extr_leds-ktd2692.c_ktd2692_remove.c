
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ktd2692_context {int lock; scalar_t__ regulator; int fled_cdev; } ;


 int dev_err (int *,char*,int) ;
 int led_classdev_flash_unregister (int *) ;
 int mutex_destroy (int *) ;
 struct ktd2692_context* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int ktd2692_remove(struct platform_device *pdev)
{
 struct ktd2692_context *led = platform_get_drvdata(pdev);
 int ret;

 led_classdev_flash_unregister(&led->fled_cdev);

 if (led->regulator) {
  ret = regulator_disable(led->regulator);
  if (ret)
   dev_err(&pdev->dev,
    "Failed to disable supply: %d\n", ret);
 }

 mutex_destroy(&led->lock);

 return 0;
}
