
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct is31fl32xx_priv {size_t num_leds; struct is31fl32xx_led_data* leds; } ;
struct is31fl32xx_led_data {scalar_t__ channel; } ;



__attribute__((used)) static struct is31fl32xx_led_data *is31fl32xx_find_led_data(
     struct is31fl32xx_priv *priv,
     u8 channel)
{
 size_t i;

 for (i = 0; i < priv->num_leds; i++) {
  if (priv->leds[i].channel == channel)
   return &priv->leds[i];
 }

 return ((void*)0);
}
