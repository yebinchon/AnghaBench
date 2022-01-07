
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns2_led_data {int cdev; } ;


 int led_classdev_unregister (int *) ;

__attribute__((used)) static void delete_ns2_led(struct ns2_led_data *led_dat)
{
 led_classdev_unregister(&led_dat->cdev);
}
