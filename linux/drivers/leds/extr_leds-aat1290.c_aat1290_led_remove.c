
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct aat1290_led {int lock; int fled_cdev; int v4l2_flash; } ;


 int led_classdev_flash_unregister (int *) ;
 int mutex_destroy (int *) ;
 struct aat1290_led* platform_get_drvdata (struct platform_device*) ;
 int v4l2_flash_release (int ) ;

__attribute__((used)) static int aat1290_led_remove(struct platform_device *pdev)
{
 struct aat1290_led *led = platform_get_drvdata(pdev);

 v4l2_flash_release(led->v4l2_flash);
 led_classdev_flash_unregister(&led->fled_cdev);

 mutex_destroy(&led->lock);

 return 0;
}
