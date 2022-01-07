
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int runtime_pm; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;


 int _clear_vgpu_fence (struct intel_vgpu*) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put_unchecked (int *) ;

void intel_vgpu_reset_resource(struct intel_vgpu *vgpu)
{
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

 intel_runtime_pm_get(&dev_priv->runtime_pm);
 _clear_vgpu_fence(vgpu);
 intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
}
