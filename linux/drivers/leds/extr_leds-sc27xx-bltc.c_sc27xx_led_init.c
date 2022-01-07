
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int SC27XX_BLTC_EN ;
 int SC27XX_CLK_EN0 ;
 int SC27XX_MODULE_EN0 ;
 int SC27XX_RGB_CTRL ;
 int SC27XX_RGB_PD ;
 int SC27XX_RTC_EN ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int sc27xx_led_init(struct regmap *regmap)
{
 int err;

 err = regmap_update_bits(regmap, SC27XX_MODULE_EN0, SC27XX_BLTC_EN,
     SC27XX_BLTC_EN);
 if (err)
  return err;

 err = regmap_update_bits(regmap, SC27XX_CLK_EN0, SC27XX_RTC_EN,
     SC27XX_RTC_EN);
 if (err)
  return err;

 return regmap_update_bits(regmap, SC27XX_RGB_CTRL, SC27XX_RGB_PD, 0);
}
