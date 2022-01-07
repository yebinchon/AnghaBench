
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_gpio {struct palmas* palmas; } ;
struct palmas {int dummy; } ;
struct gpio_chip {int parent; } ;


 int BIT (unsigned int) ;
 int PALMAS_GPIO_BASE ;
 unsigned int PALMAS_GPIO_CLEAR_DATA_OUT ;
 unsigned int PALMAS_GPIO_CLEAR_DATA_OUT2 ;
 unsigned int PALMAS_GPIO_SET_DATA_OUT ;
 unsigned int PALMAS_GPIO_SET_DATA_OUT2 ;
 int dev_err (int ,char*,unsigned int,int) ;
 struct palmas_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int palmas_write (struct palmas*,int ,unsigned int,int ) ;

__attribute__((used)) static void palmas_gpio_set(struct gpio_chip *gc, unsigned offset,
   int value)
{
 struct palmas_gpio *pg = gpiochip_get_data(gc);
 struct palmas *palmas = pg->palmas;
 int ret;
 unsigned int reg;
 int gpio16 = (offset/8);

 offset %= 8;
 if (gpio16)
  reg = (value) ?
   PALMAS_GPIO_SET_DATA_OUT2 : PALMAS_GPIO_CLEAR_DATA_OUT2;
 else
  reg = (value) ?
   PALMAS_GPIO_SET_DATA_OUT : PALMAS_GPIO_CLEAR_DATA_OUT;

 ret = palmas_write(palmas, PALMAS_GPIO_BASE, reg, BIT(offset));
 if (ret < 0)
  dev_err(gc->parent, "Reg 0x%02x write failed, %d\n", reg, ret);
}
