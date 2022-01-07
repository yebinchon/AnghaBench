
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xway_stp {int virt; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int XWAY_STP_CPU0 ;
 struct xway_stp* gpiochip_get_data (struct gpio_chip*) ;
 int xway_stp_r32 (int ,int ) ;

__attribute__((used)) static int xway_stp_get(struct gpio_chip *gc, unsigned int gpio)
{
 struct xway_stp *chip = gpiochip_get_data(gc);

 return (xway_stp_r32(chip->virt, XWAY_STP_CPU0) & BIT(gpio));
}
