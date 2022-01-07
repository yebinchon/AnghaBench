
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_psr {int sink_not_reliable; TYPE_1__* dp; } ;
struct drm_i915_private {struct i915_psr psr; } ;
struct TYPE_2__ {int aux; } ;


 int DP_SET_POWER ;
 int DP_SET_POWER_D0 ;
 int drm_dp_dpcd_writeb (int *,int ,int ) ;
 int intel_psr_disable_locked (TYPE_1__*) ;

__attribute__((used)) static void intel_psr_handle_irq(struct drm_i915_private *dev_priv)
{
 struct i915_psr *psr = &dev_priv->psr;

 intel_psr_disable_locked(psr->dp);
 psr->sink_not_reliable = 1;

 drm_dp_dpcd_writeb(&psr->dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
}
