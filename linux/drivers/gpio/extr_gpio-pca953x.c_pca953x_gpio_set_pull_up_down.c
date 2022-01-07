
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pca953x_chip {int driver_data; int i2c_lock; int regmap; } ;


 unsigned int BANK_SZ ;
 int BIT (unsigned int) ;
 int ENOTSUPP ;
 int PCAL953X_PULL_EN ;
 int PCAL953X_PULL_SEL ;
 int PCA_PCAL ;
 unsigned long PIN_CONFIG_BIAS_PULL_DOWN ;
 unsigned long PIN_CONFIG_BIAS_PULL_UP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pca953x_recalc_addr (struct pca953x_chip*,int ,unsigned int,int,int) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pca953x_gpio_set_pull_up_down(struct pca953x_chip *chip,
      unsigned int offset,
      unsigned long config)
{
 u8 pull_en_reg = pca953x_recalc_addr(chip, PCAL953X_PULL_EN, offset,
          1, 0);
 u8 pull_sel_reg = pca953x_recalc_addr(chip, PCAL953X_PULL_SEL, offset,
           1, 0);
 u8 bit = BIT(offset % BANK_SZ);
 int ret;





 if (!(chip->driver_data & PCA_PCAL))
  return -ENOTSUPP;

 mutex_lock(&chip->i2c_lock);


 ret = regmap_write_bits(chip->regmap, pull_en_reg, bit, 0);
 if (ret)
  goto exit;


 if (config == PIN_CONFIG_BIAS_PULL_UP)
  ret = regmap_write_bits(chip->regmap, pull_sel_reg, bit, bit);
 else if (config == PIN_CONFIG_BIAS_PULL_DOWN)
  ret = regmap_write_bits(chip->regmap, pull_sel_reg, bit, 0);
 if (ret)
  goto exit;


 ret = regmap_write_bits(chip->regmap, pull_en_reg, bit, bit);

exit:
 mutex_unlock(&chip->i2c_lock);
 return ret;
}
