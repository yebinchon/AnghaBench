
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nasgpio_led {int gpio_bit; } ;
struct led_classdev {int dummy; } ;


 int inl (int) ;
 struct nasgpio_led* led_classdev_to_nasgpio_led (struct led_classdev*) ;
 int nas_gpio_io_base ;
 int outl (int,int) ;

__attribute__((used)) static void __nasgpio_led_set_attr(struct led_classdev *led_cdev,
       u32 port, u32 value)
{
 struct nasgpio_led *led = led_classdev_to_nasgpio_led(led_cdev);
 u32 gpio_out;

 gpio_out = inl(nas_gpio_io_base + port);
 if (value)
  gpio_out |= (1<<led->gpio_bit);
 else
  gpio_out &= ~(1<<led->gpio_bit);

 outl(gpio_out, nas_gpio_io_base + port);
}
