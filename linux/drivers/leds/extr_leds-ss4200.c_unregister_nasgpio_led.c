
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;


 struct led_classdev* get_classdev_for_led_nr (int) ;
 int led_classdev_unregister (struct led_classdev*) ;

__attribute__((used)) static void unregister_nasgpio_led(int led_nr)
{
 struct led_classdev *led = get_classdev_for_led_nr(led_nr);
 led_classdev_unregister(led);
}
