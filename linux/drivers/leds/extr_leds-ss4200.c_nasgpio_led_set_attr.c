
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_classdev {int dummy; } ;


 int __nasgpio_led_set_attr (struct led_classdev*,int ,int ) ;
 int nasgpio_gpio_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nasgpio_led_set_attr(struct led_classdev *led_cdev,
     u32 port, u32 value)
{
 spin_lock(&nasgpio_gpio_lock);
 __nasgpio_led_set_attr(led_cdev, port, value);
 spin_unlock(&nasgpio_gpio_lock);
}
