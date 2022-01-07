
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max77693_sub_led {int flash_faults; } ;
struct led_classdev_flash {int dummy; } ;


 struct max77693_sub_led* flcdev_to_sub_led (struct led_classdev_flash*) ;

__attribute__((used)) static int max77693_led_flash_fault_get(
    struct led_classdev_flash *fled_cdev,
    u32 *fault)
{
 struct max77693_sub_led *sub_led = flcdev_to_sub_led(fled_cdev);

 *fault = sub_led->flash_faults;

 return 0;
}
