
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct TYPE_5__ {int cdclk; } ;
struct TYPE_6__ {TYPE_2__ hw; } ;
struct drm_i915_private {TYPE_3__ cdclk; int rawclk_freq; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 int KHz (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 i965_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 int clock;

 if (IS_G4X(dev_priv))
  clock = KHz(dev_priv->rawclk_freq);
 else
  clock = KHz(dev_priv->cdclk.hw.cdclk);

 return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 128);
}
