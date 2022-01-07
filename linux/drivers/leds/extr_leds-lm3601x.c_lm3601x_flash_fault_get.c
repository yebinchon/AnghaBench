
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm3601x_led {int last_flag; } ;
struct led_classdev_flash {int dummy; } ;


 struct lm3601x_led* fled_cdev_to_led (struct led_classdev_flash*) ;
 int lm3601x_read_faults (struct lm3601x_led*) ;

__attribute__((used)) static int lm3601x_flash_fault_get(struct led_classdev_flash *fled_cdev,
    u32 *fault)
{
 struct lm3601x_led *led = fled_cdev_to_led(fled_cdev);

 lm3601x_read_faults(led);

 *fault = led->last_flag;

 return 0;
}
