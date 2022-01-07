
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pca953x_chip {int driver_data; } ;


 int BANK_SZ ;
 int NBANK (struct pca953x_chip*) ;
 scalar_t__ PCA957X_TYPE ;
 int PCAL_GPIO_MASK ;
 int PCAL_PINCTRL_MASK ;
 scalar_t__ PCA_CHIP_TYPE (int ) ;
 int REG_ADDR_AI ;
 int pca953x_bank_shift (struct pca953x_chip*) ;

__attribute__((used)) static u8 pca953x_recalc_addr(struct pca953x_chip *chip, int reg, int off,
         bool write, bool addrinc)
{
 int bank_shift = pca953x_bank_shift(chip);
 int addr = (reg & PCAL_GPIO_MASK) << bank_shift;
 int pinctrl = (reg & PCAL_PINCTRL_MASK) << 1;
 u8 regaddr = pinctrl | addr | (off / BANK_SZ);


 if (!addrinc)
  return regaddr;


 if (write && NBANK(chip) > 2)
  regaddr |= REG_ADDR_AI;


 if (PCA_CHIP_TYPE(chip->driver_data) == PCA957X_TYPE)
  regaddr |= REG_ADDR_AI;

 return regaddr;
}
