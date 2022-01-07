
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int GIO_E1 ;
 int em_gio_set (struct gpio_chip*,unsigned int,int) ;
 int em_gio_write (int ,int ,int ) ;
 int gpio_to_priv (struct gpio_chip*) ;

__attribute__((used)) static int em_gio_direction_output(struct gpio_chip *chip, unsigned offset,
       int value)
{

 em_gio_set(chip, offset, value);
 em_gio_write(gpio_to_priv(chip), GIO_E1, BIT(offset));
 return 0;
}
