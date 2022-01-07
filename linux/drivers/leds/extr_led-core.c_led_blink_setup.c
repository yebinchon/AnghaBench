
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int (* blink_set ) (struct led_classdev*,unsigned long*,unsigned long*) ;int work_flags; } ;


 int LED_BLINK_ONESHOT ;
 int led_set_software_blink (struct led_classdev*,unsigned long,unsigned long) ;
 int stub1 (struct led_classdev*,unsigned long*,unsigned long*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void led_blink_setup(struct led_classdev *led_cdev,
       unsigned long *delay_on,
       unsigned long *delay_off)
{
 if (!test_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags) &&
     led_cdev->blink_set &&
     !led_cdev->blink_set(led_cdev, delay_on, delay_off))
  return;


 if (!*delay_on && !*delay_off)
  *delay_on = *delay_off = 500;

 led_set_software_blink(led_cdev, *delay_on, *delay_off);
}
