
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct em_gio_priv {int dummy; } ;


 struct em_gio_priv* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static inline struct em_gio_priv *gpio_to_priv(struct gpio_chip *chip)
{
 return gpiochip_get_data(chip);
}
