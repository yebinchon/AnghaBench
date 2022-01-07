
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int GIO_I ;
 int em_gio_read (int ,int ) ;
 int gpio_to_priv (struct gpio_chip*) ;

__attribute__((used)) static int em_gio_get(struct gpio_chip *chip, unsigned offset)
{
 return !!(em_gio_read(gpio_to_priv(chip), GIO_I) & BIT(offset));
}
