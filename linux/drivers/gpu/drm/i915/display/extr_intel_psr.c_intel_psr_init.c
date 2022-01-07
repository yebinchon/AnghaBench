
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int sink_not_reliable; int link_standby; int lock; int work; int sink_support; } ;
struct TYPE_5__ {int full_link; int enable; } ;
struct TYPE_6__ {TYPE_1__ psr; } ;
struct drm_i915_private {TYPE_3__ psr; TYPE_2__ vbt; int psr_mmio_base; } ;
struct TYPE_8__ {int enable_psr; } ;


 int BDW_EDP_PSR_BASE ;
 int DRM_DEBUG_KMS (char*) ;
 int EDP_PSR_ERROR (int ) ;
 int EDP_PSR_IIR ;
 int HAS_PSR (struct drm_i915_private*) ;
 int HSW_EDP_PSR_BASE ;
 int I915_READ (int ) ;
 int INIT_WORK (int *,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int TRANSCODER_EDP ;
 int edp_psr_shift (int ) ;
 TYPE_4__ i915_modparams ;
 int intel_psr_work ;
 int mutex_init (int *) ;

void intel_psr_init(struct drm_i915_private *dev_priv)
{
 u32 val;

 if (!HAS_PSR(dev_priv))
  return;

 dev_priv->psr_mmio_base = IS_HASWELL(dev_priv) ?
  HSW_EDP_PSR_BASE : BDW_EDP_PSR_BASE;

 if (!dev_priv->psr.sink_support)
  return;

 if (i915_modparams.enable_psr == -1)
  if (INTEL_GEN(dev_priv) < 9 || !dev_priv->vbt.psr.enable)
   i915_modparams.enable_psr = 0;
 val = I915_READ(EDP_PSR_IIR);
 val &= EDP_PSR_ERROR(edp_psr_shift(TRANSCODER_EDP));
 if (val) {
  DRM_DEBUG_KMS("PSR interruption error set\n");
  dev_priv->psr.sink_not_reliable = 1;
 }


 if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))

  dev_priv->psr.link_standby = 0;
 else

  dev_priv->psr.link_standby = dev_priv->vbt.psr.full_link;

 INIT_WORK(&dev_priv->psr.work, intel_psr_work);
 mutex_init(&dev_priv->psr.lock);
}
