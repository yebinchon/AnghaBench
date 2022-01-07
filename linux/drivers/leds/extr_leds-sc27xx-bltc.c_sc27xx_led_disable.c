
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sc27xx_led {int line; TYPE_1__* priv; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; struct regmap* regmap; } ;


 int SC27XX_CTRL_SHIFT ;
 scalar_t__ SC27XX_LEDS_CTRL ;
 int SC27XX_LED_RUN ;
 int SC27XX_LED_TYPE ;
 int regmap_update_bits (struct regmap*,scalar_t__,int,int ) ;

__attribute__((used)) static int sc27xx_led_disable(struct sc27xx_led *leds)
{
 struct regmap *regmap = leds->priv->regmap;
 u32 ctrl_base = leds->priv->base + SC27XX_LEDS_CTRL;
 u8 ctrl_shift = SC27XX_CTRL_SHIFT * leds->line;

 return regmap_update_bits(regmap, ctrl_base,
   (SC27XX_LED_RUN | SC27XX_LED_TYPE) << ctrl_shift, 0);
}
