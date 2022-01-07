
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xway_stp {int reserved; } ;
struct gpio_chip {int parent; } ;


 int BIT (unsigned int) ;
 int ENODEV ;
 int dev_err (int ,char*,unsigned int) ;
 struct xway_stp* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int xway_stp_request(struct gpio_chip *gc, unsigned gpio)
{
 struct xway_stp *chip = gpiochip_get_data(gc);

 if ((gpio < 8) && (chip->reserved & BIT(gpio))) {
  dev_err(gc->parent, "GPIO %d is driven by hardware\n", gpio);
  return -ENODEV;
 }

 return 0;
}
