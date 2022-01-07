
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca953x_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int ENOTSUPP ;


 struct pca953x_chip* gpiochip_get_data (struct gpio_chip*) ;
 int pca953x_gpio_set_pull_up_down (struct pca953x_chip*,unsigned int,unsigned long) ;

__attribute__((used)) static int pca953x_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
       unsigned long config)
{
 struct pca953x_chip *chip = gpiochip_get_data(gc);

 switch (config) {
 case 128:
 case 129:
  return pca953x_gpio_set_pull_up_down(chip, offset, config);
 default:
  return -ENOTSUPP;
 }
}
