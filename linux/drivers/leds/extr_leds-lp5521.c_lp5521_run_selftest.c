
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_platform_data {scalar_t__ clock_mode; } ;
struct lp55xx_chip {struct lp55xx_platform_data* pdata; } ;


 int EIO ;
 int LP5521_EXT_CLK_USED ;
 int LP5521_REG_STATUS ;
 scalar_t__ LP55XX_CLOCK_EXT ;
 int lp55xx_read (struct lp55xx_chip*,int ,int*) ;

__attribute__((used)) static int lp5521_run_selftest(struct lp55xx_chip *chip, char *buf)
{
 struct lp55xx_platform_data *pdata = chip->pdata;
 int ret;
 u8 status;

 ret = lp55xx_read(chip, LP5521_REG_STATUS, &status);
 if (ret < 0)
  return ret;

 if (pdata->clock_mode != LP55XX_CLOCK_EXT)
  return 0;


 if ((status & LP5521_EXT_CLK_USED) == 0)
  return -EIO;

 return 0;
}
