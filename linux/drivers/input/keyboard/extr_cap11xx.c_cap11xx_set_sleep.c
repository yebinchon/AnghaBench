
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cap11xx_priv {int regmap; scalar_t__ num_leds; } ;


 int CAP11XX_REG_MAIN_CONTROL ;
 int CAP11XX_REG_MAIN_CONTROL_DLSEEP ;
 int CONFIG_LEDS_CLASS ;
 scalar_t__ IS_ENABLED (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int cap11xx_set_sleep(struct cap11xx_priv *priv, bool sleep)
{



 if (IS_ENABLED(CONFIG_LEDS_CLASS) && priv->num_leds)
  return 0;

 return regmap_update_bits(priv->regmap, CAP11XX_REG_MAIN_CONTROL,
      CAP11XX_REG_MAIN_CONTROL_DLSEEP,
      sleep ? CAP11XX_REG_MAIN_CONTROL_DLSEEP : 0);
}
