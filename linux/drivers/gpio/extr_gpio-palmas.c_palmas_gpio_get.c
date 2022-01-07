
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_gpio {struct palmas* palmas; } ;
struct palmas {int dummy; } ;
struct gpio_chip {int parent; } ;


 unsigned int BIT (unsigned int) ;
 int PALMAS_GPIO_BASE ;
 unsigned int PALMAS_GPIO_DATA_DIR ;
 unsigned int PALMAS_GPIO_DATA_DIR2 ;
 unsigned int PALMAS_GPIO_DATA_IN ;
 unsigned int PALMAS_GPIO_DATA_IN2 ;
 unsigned int PALMAS_GPIO_DATA_OUT ;
 unsigned int PALMAS_GPIO_DATA_OUT2 ;
 int dev_err (int ,char*,unsigned int,int) ;
 struct palmas_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int palmas_read (struct palmas*,int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int palmas_gpio_get(struct gpio_chip *gc, unsigned offset)
{
 struct palmas_gpio *pg = gpiochip_get_data(gc);
 struct palmas *palmas = pg->palmas;
 unsigned int val;
 int ret;
 unsigned int reg;
 int gpio16 = (offset/8);

 offset %= 8;
 reg = (gpio16) ? PALMAS_GPIO_DATA_DIR2 : PALMAS_GPIO_DATA_DIR;

 ret = palmas_read(palmas, PALMAS_GPIO_BASE, reg, &val);
 if (ret < 0) {
  dev_err(gc->parent, "Reg 0x%02x read failed, %d\n", reg, ret);
  return ret;
 }

 if (val & BIT(offset))
  reg = (gpio16) ? PALMAS_GPIO_DATA_OUT2 : PALMAS_GPIO_DATA_OUT;
 else
  reg = (gpio16) ? PALMAS_GPIO_DATA_IN2 : PALMAS_GPIO_DATA_IN;

 ret = palmas_read(palmas, PALMAS_GPIO_BASE, reg, &val);
 if (ret < 0) {
  dev_err(gc->parent, "Reg 0x%02x read failed, %d\n", reg, ret);
  return ret;
 }
 return !!(val & BIT(offset));
}
