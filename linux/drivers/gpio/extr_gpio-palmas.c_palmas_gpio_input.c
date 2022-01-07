
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_gpio {struct palmas* palmas; } ;
struct palmas {int dummy; } ;
struct gpio_chip {int parent; } ;


 int BIT (unsigned int) ;
 int PALMAS_GPIO_BASE ;
 unsigned int PALMAS_GPIO_DATA_DIR ;
 unsigned int PALMAS_GPIO_DATA_DIR2 ;
 int dev_err (int ,char*,unsigned int,int) ;
 struct palmas_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int palmas_update_bits (struct palmas*,int ,unsigned int,int ,int ) ;

__attribute__((used)) static int palmas_gpio_input(struct gpio_chip *gc, unsigned offset)
{
 struct palmas_gpio *pg = gpiochip_get_data(gc);
 struct palmas *palmas = pg->palmas;
 int ret;
 unsigned int reg;
 int gpio16 = (offset/8);

 offset %= 8;
 reg = (gpio16) ? PALMAS_GPIO_DATA_DIR2 : PALMAS_GPIO_DATA_DIR;

 ret = palmas_update_bits(palmas, PALMAS_GPIO_BASE, reg, BIT(offset), 0);
 if (ret < 0)
  dev_err(gc->parent, "Reg 0x%02x update failed, %d\n", reg,
   ret);
 return ret;
}
