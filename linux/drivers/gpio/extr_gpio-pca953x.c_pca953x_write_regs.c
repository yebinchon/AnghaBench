
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pca953x_chip {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int NBANK (struct pca953x_chip*) ;
 int dev_err (int *,char*) ;
 int pca953x_recalc_addr (struct pca953x_chip*,int,int ,int,int) ;
 int regmap_bulk_write (int ,int ,int *,int ) ;

__attribute__((used)) static int pca953x_write_regs(struct pca953x_chip *chip, int reg, u8 *val)
{
 u8 regaddr = pca953x_recalc_addr(chip, reg, 0, 1, 1);
 int ret;

 ret = regmap_bulk_write(chip->regmap, regaddr, val, NBANK(chip));
 if (ret < 0) {
  dev_err(&chip->client->dev, "failed writing register\n");
  return ret;
 }

 return 0;
}
