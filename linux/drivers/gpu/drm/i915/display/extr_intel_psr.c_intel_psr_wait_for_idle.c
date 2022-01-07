
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {int has_psr; TYPE_1__ base; } ;
struct TYPE_5__ {int dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct TYPE_6__ {int psr2_enabled; int enabled; } ;
struct drm_i915_private {int uncore; TYPE_3__ psr; } ;


 int EDP_PSR_STATUS ;
 int EDP_PSR_STATUS_STATE_IDLE ;
 int EDP_PSR_STATUS_STATE_MASK ;
 scalar_t__ READ_ONCE (int ) ;
 int __intel_wait_for_register (int *,int ,int ,int ,int,int,int *) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

int intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state,
       u32 *out_value)
{
 struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

 if (!dev_priv->psr.enabled || !new_crtc_state->has_psr)
  return 0;


 if (READ_ONCE(dev_priv->psr.psr2_enabled))
  return 0;
 return __intel_wait_for_register(&dev_priv->uncore, EDP_PSR_STATUS,
      EDP_PSR_STATUS_STATE_MASK,
      EDP_PSR_STATUS_STATE_IDLE, 2, 50,
      out_value);
}
