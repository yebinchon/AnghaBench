
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int SPRD_PMIC_EIC_DMSK ;
 int sprd_pmic_eic_update (struct gpio_chip*,unsigned int,int ,int) ;

__attribute__((used)) static int sprd_pmic_eic_request(struct gpio_chip *chip, unsigned int offset)
{
 sprd_pmic_eic_update(chip, offset, SPRD_PMIC_EIC_DMSK, 1);
 return 0;
}
