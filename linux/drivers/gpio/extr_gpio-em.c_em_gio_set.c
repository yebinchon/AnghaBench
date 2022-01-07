
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GIO_OH ;
 int GIO_OL ;
 int __em_gio_set (struct gpio_chip*,int ,unsigned int,int) ;

__attribute__((used)) static void em_gio_set(struct gpio_chip *chip, unsigned offset, int value)
{

 if (offset < 16)
  __em_gio_set(chip, GIO_OL, offset, value);
 else
  __em_gio_set(chip, GIO_OH, offset - 16, value);
}
