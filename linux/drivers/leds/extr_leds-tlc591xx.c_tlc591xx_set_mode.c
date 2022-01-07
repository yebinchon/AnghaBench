
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int MODE1_NORMAL_MODE ;
 int MODE2_OCH_STOP ;
 int TLC591XX_REG_MODE1 ;
 int TLC591XX_REG_MODE2 ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int
tlc591xx_set_mode(struct regmap *regmap, u8 mode)
{
 int err;
 u8 val;

 err = regmap_write(regmap, TLC591XX_REG_MODE1, MODE1_NORMAL_MODE);
 if (err)
  return err;

 val = MODE2_OCH_STOP | mode;

 return regmap_write(regmap, TLC591XX_REG_MODE2, val);
}
