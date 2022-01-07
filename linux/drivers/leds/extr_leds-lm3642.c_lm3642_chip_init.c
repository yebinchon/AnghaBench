
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3642_platform_data {int tx_pin; } ;
struct lm3642_chip_data {int dev; int regmap; struct lm3642_platform_data* pdata; } ;


 int EX_PIN_ENABLE_MASK ;
 int REG_ENABLE ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int lm3642_chip_init(struct lm3642_chip_data *chip)
{
 int ret;
 struct lm3642_platform_data *pdata = chip->pdata;


 ret = regmap_update_bits(chip->regmap, REG_ENABLE, EX_PIN_ENABLE_MASK,
     pdata->tx_pin);
 if (ret < 0)
  dev_err(chip->dev, "Failed to update REG_ENABLE Register\n");
 return ret;
}
