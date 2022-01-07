
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int DLN2_GPIO_CONDITION_MET_EV ;
 int dln2_unregister_event_cb (struct platform_device*,int ) ;

__attribute__((used)) static int dln2_gpio_remove(struct platform_device *pdev)
{
 dln2_unregister_event_cb(pdev, DLN2_GPIO_CONDITION_MET_EV);

 return 0;
}
