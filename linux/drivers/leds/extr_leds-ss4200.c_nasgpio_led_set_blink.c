
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_classdev {int dummy; } ;


 int EINVAL ;
 int GPO_BLINK ;
 int nasgpio_led_set_attr (struct led_classdev*,int ,int) ;

__attribute__((used)) static int nasgpio_led_set_blink(struct led_classdev *led_cdev,
     unsigned long *delay_on,
     unsigned long *delay_off)
{
 u32 setting = 1;
 if (!(*delay_on == 0 && *delay_off == 0) &&
     !(*delay_on == 500 && *delay_off == 500))
  return -EINVAL;



 *delay_on = 500;
 *delay_off = 500;

 nasgpio_led_set_attr(led_cdev, GPO_BLINK, setting);

 return 0;
}
