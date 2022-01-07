
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlc591xx_priv {TYPE_1__* leds; } ;
struct TYPE_2__ {int ldev; scalar_t__ active; } ;


 int led_classdev_unregister (int *) ;

__attribute__((used)) static void
tlc591xx_destroy_devices(struct tlc591xx_priv *priv, unsigned int j)
{
 int i = j;

 while (--i >= 0) {
  if (priv->leds[i].active)
   led_classdev_unregister(&priv->leds[i].ldev);
 }
}
