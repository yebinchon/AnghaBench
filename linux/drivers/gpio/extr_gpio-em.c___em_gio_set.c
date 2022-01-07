
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int em_gio_write (int ,unsigned int,int) ;
 int gpio_to_priv (struct gpio_chip*) ;

__attribute__((used)) static void __em_gio_set(struct gpio_chip *chip, unsigned int reg,
    unsigned shift, int value)
{

 em_gio_write(gpio_to_priv(chip), reg,
       (BIT(shift + 16)) | (value << shift));
}
