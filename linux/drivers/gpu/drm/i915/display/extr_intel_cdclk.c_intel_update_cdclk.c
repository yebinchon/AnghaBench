
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cdclk; } ;
struct TYPE_5__ {TYPE_3__ hw; } ;
struct TYPE_4__ {int (* get_cdclk ) (struct drm_i915_private*,TYPE_3__*) ;} ;
struct drm_i915_private {TYPE_2__ cdclk; TYPE_1__ display; } ;


 int DIV_ROUND_UP (int ,int) ;
 int GMBUSFREQ_VLV ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int stub1 (struct drm_i915_private*,TYPE_3__*) ;

void intel_update_cdclk(struct drm_i915_private *dev_priv)
{
 dev_priv->display.get_cdclk(dev_priv, &dev_priv->cdclk.hw);







 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  I915_WRITE(GMBUSFREQ_VLV,
      DIV_ROUND_UP(dev_priv->cdclk.hw.cdclk, 1000));
}
