
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int SPRD_PMIC_EIC_DATA ;
 int sprd_pmic_eic_read (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int sprd_pmic_eic_get(struct gpio_chip *chip, unsigned int offset)
{
 return sprd_pmic_eic_read(chip, offset, SPRD_PMIC_EIC_DATA);
}
