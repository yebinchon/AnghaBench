
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bypass; int ref; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;


 int MISSING_CASE (int) ;

__attribute__((used)) static int glk_de_pll_vco(struct drm_i915_private *dev_priv, int cdclk)
{
 int ratio;

 if (cdclk == dev_priv->cdclk.hw.bypass)
  return 0;

 switch (cdclk) {
 default:
  MISSING_CASE(cdclk);

 case 79200:
 case 158400:
 case 316800:
  ratio = 33;
  break;
 }

 return dev_priv->cdclk.hw.ref * ratio;
}
