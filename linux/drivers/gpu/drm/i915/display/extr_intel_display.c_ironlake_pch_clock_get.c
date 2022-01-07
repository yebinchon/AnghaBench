
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int crtc_clock; } ;
struct TYPE_6__ {TYPE_2__ adjusted_mode; } ;
struct intel_crtc_state {int fdi_m_n; TYPE_3__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int i9xx_crtc_clock_get (struct intel_crtc*,struct intel_crtc_state*) ;
 int intel_dotclock_calculate (int ,int *) ;
 int intel_fdi_link_freq (struct drm_i915_private*,struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void ironlake_pch_clock_get(struct intel_crtc *crtc,
       struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);


 i9xx_crtc_clock_get(crtc, pipe_config);






 pipe_config->base.adjusted_mode.crtc_clock =
  intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, pipe_config),
      &pipe_config->fdi_m_n);
}
