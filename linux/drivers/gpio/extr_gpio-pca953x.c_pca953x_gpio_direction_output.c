
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pca953x_chip {int i2c_lock; int regmap; TYPE_1__* regs; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int output; int direction; } ;


 unsigned int BANK_SZ ;
 int BIT (unsigned int) ;
 struct pca953x_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pca953x_recalc_addr (struct pca953x_chip*,int ,unsigned int,int,int) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pca953x_gpio_direction_output(struct gpio_chip *gc,
  unsigned off, int val)
{
 struct pca953x_chip *chip = gpiochip_get_data(gc);
 u8 dirreg = pca953x_recalc_addr(chip, chip->regs->direction, off,
     1, 0);
 u8 outreg = pca953x_recalc_addr(chip, chip->regs->output, off,
     1, 0);
 u8 bit = BIT(off % BANK_SZ);
 int ret;

 mutex_lock(&chip->i2c_lock);

 ret = regmap_write_bits(chip->regmap, outreg, bit, val ? bit : 0);
 if (ret)
  goto exit;


 ret = regmap_write_bits(chip->regmap, dirreg, bit, 0);
exit:
 mutex_unlock(&chip->i2c_lock);
 return ret;
}
