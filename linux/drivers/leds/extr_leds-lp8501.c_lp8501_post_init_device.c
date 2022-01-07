
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lp55xx_chip {TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ clock_mode; int pwr_sel; } ;


 scalar_t__ LP55XX_CLOCK_EXT ;
 int LP8501_DEFAULT_CFG ;
 int LP8501_ENABLE ;
 int LP8501_INT_CLK ;
 int LP8501_PWR_CONFIG_M ;
 int LP8501_REG_CONFIG ;
 int LP8501_REG_ENABLE ;
 int LP8501_REG_PWR_CONFIG ;
 int lp55xx_update_bits (struct lp55xx_chip*,int ,int ,int ) ;
 int lp55xx_write (struct lp55xx_chip*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lp8501_post_init_device(struct lp55xx_chip *chip)
{
 int ret;
 u8 val = LP8501_DEFAULT_CFG;

 ret = lp55xx_write(chip, LP8501_REG_ENABLE, LP8501_ENABLE);
 if (ret)
  return ret;


 usleep_range(1000, 2000);

 if (chip->pdata->clock_mode != LP55XX_CLOCK_EXT)
  val |= LP8501_INT_CLK;

 ret = lp55xx_write(chip, LP8501_REG_CONFIG, val);
 if (ret)
  return ret;


 return lp55xx_update_bits(chip, LP8501_REG_PWR_CONFIG,
    LP8501_PWR_CONFIG_M, chip->pdata->pwr_sel);
}
