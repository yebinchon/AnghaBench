
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pca953x_chip {int driver_data; } ;


 int BIT (int) ;
 int NBANK (struct pca953x_chip*) ;
 int PCA_PCAL ;
 unsigned int REG_ADDR_EXT ;
 unsigned int REG_ADDR_MASK ;
 int pca953x_bank_shift (struct pca953x_chip*) ;

__attribute__((used)) static bool pca953x_check_register(struct pca953x_chip *chip, unsigned int reg,
       u32 checkbank)
{
 int bank_shift = pca953x_bank_shift(chip);
 int bank = (reg & REG_ADDR_MASK) >> bank_shift;
 int offset = reg & (BIT(bank_shift) - 1);


 if (reg & REG_ADDR_EXT) {
  if (!(chip->driver_data & PCA_PCAL))
   return 0;
  bank += 8;
 }


 if (!(BIT(bank) & checkbank))
  return 0;


 if (offset >= NBANK(chip))
  return 0;

 return 1;
}
