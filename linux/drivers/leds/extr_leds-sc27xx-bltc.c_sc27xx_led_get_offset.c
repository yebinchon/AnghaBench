
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sc27xx_led {int line; TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int SC27XX_LEDS_OFFSET ;

__attribute__((used)) static u32 sc27xx_led_get_offset(struct sc27xx_led *leds)
{
 return leds->priv->base + SC27XX_LEDS_OFFSET * leds->line;
}
