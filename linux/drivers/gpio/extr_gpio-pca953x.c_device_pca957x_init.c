
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pca953x_chip {int dummy; } ;


 int MAX_BANK ;
 int NBANK (struct pca953x_chip*) ;
 int PCA957X_BKEN ;
 int device_pca95xx_init (struct pca953x_chip*,int ) ;
 int memset (int *,int,int ) ;
 int pca953x_write_regs (struct pca953x_chip*,int ,int *) ;

__attribute__((used)) static int device_pca957x_init(struct pca953x_chip *chip, u32 invert)
{
 int ret;
 u8 val[MAX_BANK];

 ret = device_pca95xx_init(chip, invert);
 if (ret)
  goto out;


 memset(val, 0x02, NBANK(chip));
 ret = pca953x_write_regs(chip, PCA957X_BKEN, val);
 if (ret)
  goto out;

 return 0;
out:
 return ret;
}
