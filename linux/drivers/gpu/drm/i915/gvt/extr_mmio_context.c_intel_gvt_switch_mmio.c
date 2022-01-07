
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int uncore; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;


 int FORCEWAKE_ALL ;
 scalar_t__ WARN_ON (int) ;
 int gvt_dbg_render (char*,int,char*,char*) ;
 int intel_uncore_forcewake_get (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;
 int switch_mmio (struct intel_vgpu*,struct intel_vgpu*,int) ;

void intel_gvt_switch_mmio(struct intel_vgpu *pre,
      struct intel_vgpu *next, int ring_id)
{
 struct drm_i915_private *dev_priv;

 if (WARN_ON(!pre && !next))
  return;

 gvt_dbg_render("switch ring %d from %s to %s\n", ring_id,
         pre ? "vGPU" : "host", next ? "vGPU" : "HOST");

 dev_priv = pre ? pre->gvt->dev_priv : next->gvt->dev_priv;






 intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
 switch_mmio(pre, next, ring_id);
 intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
}
