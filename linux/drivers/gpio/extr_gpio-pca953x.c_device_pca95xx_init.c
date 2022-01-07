
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct pca953x_chip {TYPE_1__* regs; int regmap; } ;
struct TYPE_2__ {int invert; scalar_t__ direction; scalar_t__ output; } ;


 int MAX_BANK ;
 scalar_t__ NBANK (struct pca953x_chip*) ;
 int memset (int *,int,scalar_t__) ;
 int pca953x_write_regs (struct pca953x_chip*,int ,int *) ;
 int regcache_sync_region (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int device_pca95xx_init(struct pca953x_chip *chip, u32 invert)
{
 int ret;
 u8 val[MAX_BANK];

 ret = regcache_sync_region(chip->regmap, chip->regs->output,
       chip->regs->output + NBANK(chip));
 if (ret)
  goto out;

 ret = regcache_sync_region(chip->regmap, chip->regs->direction,
       chip->regs->direction + NBANK(chip));
 if (ret)
  goto out;


 if (invert)
  memset(val, 0xFF, NBANK(chip));
 else
  memset(val, 0, NBANK(chip));

 ret = pca953x_write_regs(chip, chip->regs->invert, val);
out:
 return ret;
}
