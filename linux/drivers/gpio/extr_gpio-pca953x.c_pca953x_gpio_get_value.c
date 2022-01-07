
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pca953x_chip {int i2c_lock; int regmap; TYPE_1__* regs; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int input; } ;


 unsigned int BANK_SZ ;
 int BIT (unsigned int) ;
 struct pca953x_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pca953x_recalc_addr (struct pca953x_chip*,int ,unsigned int,int,int) ;
 int regmap_read (int ,int,int*) ;

__attribute__((used)) static int pca953x_gpio_get_value(struct gpio_chip *gc, unsigned off)
{
 struct pca953x_chip *chip = gpiochip_get_data(gc);
 u8 inreg = pca953x_recalc_addr(chip, chip->regs->input, off,
           1, 0);
 u8 bit = BIT(off % BANK_SZ);
 u32 reg_val;
 int ret;

 mutex_lock(&chip->i2c_lock);
 ret = regmap_read(chip->regmap, inreg, &reg_val);
 mutex_unlock(&chip->i2c_lock);
 if (ret < 0) {




  return 0;
 }

 return !!(reg_val & bit);
}
