
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sprd_pmic_eic {unsigned int offset; int map; } ;
struct gpio_chip {int dummy; } ;


 int SPRD_PMIC_EIC_BIT (unsigned int) ;
 unsigned int SPRD_PMIC_EIC_CTRL0 ;
 unsigned int SPRD_PMIC_EIC_DBNC_MASK ;
 struct sprd_pmic_eic* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int sprd_pmic_eic_set_debounce(struct gpio_chip *chip,
          unsigned int offset,
          unsigned int debounce)
{
 struct sprd_pmic_eic *pmic_eic = gpiochip_get_data(chip);
 u32 reg, value;
 int ret;

 reg = SPRD_PMIC_EIC_CTRL0 + SPRD_PMIC_EIC_BIT(offset) * 0x4;
 ret = regmap_read(pmic_eic->map, pmic_eic->offset + reg, &value);
 if (ret)
  return ret;

 value &= ~SPRD_PMIC_EIC_DBNC_MASK;
 value |= (debounce / 1000) & SPRD_PMIC_EIC_DBNC_MASK;
 return regmap_write(pmic_eic->map, pmic_eic->offset + reg, value);
}
