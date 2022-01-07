
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo_dev {int dev; } ;


 int devm_led_classdev_register (int *,int *) ;
 int locomo_led0 ;
 int locomo_led1 ;

__attribute__((used)) static int locomoled_probe(struct locomo_dev *ldev)
{
 int ret;

 ret = devm_led_classdev_register(&ldev->dev, &locomo_led0);
 if (ret < 0)
  return ret;

 return devm_led_classdev_register(&ldev->dev, &locomo_led1);
}
