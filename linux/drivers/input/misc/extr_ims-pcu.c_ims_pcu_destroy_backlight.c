
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu_backlight {int cdev; } ;
struct ims_pcu {struct ims_pcu_backlight backlight; } ;


 int led_classdev_unregister (int *) ;

__attribute__((used)) static void ims_pcu_destroy_backlight(struct ims_pcu *pcu)
{
 struct ims_pcu_backlight *backlight = &pcu->backlight;

 led_classdev_unregister(&backlight->cdev);
}
