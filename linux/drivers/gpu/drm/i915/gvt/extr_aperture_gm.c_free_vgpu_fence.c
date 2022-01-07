
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {struct i915_fence_reg** regs; } ;
struct intel_vgpu {TYPE_1__ fence; struct intel_gvt* gvt; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct i915_fence_reg {int dummy; } ;
struct TYPE_5__ {int mutex; } ;
struct TYPE_6__ {TYPE_2__ vm; } ;
struct drm_i915_private {int runtime_pm; TYPE_3__ ggtt; } ;


 scalar_t__ WARN_ON (int) ;
 int _clear_vgpu_fence (struct intel_vgpu*) ;
 int i915_unreserve_fence (struct i915_fence_reg*) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put_unchecked (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t vgpu_fence_sz (struct intel_vgpu*) ;

__attribute__((used)) static void free_vgpu_fence(struct intel_vgpu *vgpu)
{
 struct intel_gvt *gvt = vgpu->gvt;
 struct drm_i915_private *dev_priv = gvt->dev_priv;
 struct i915_fence_reg *reg;
 u32 i;

 if (WARN_ON(!vgpu_fence_sz(vgpu)))
  return;

 intel_runtime_pm_get(&dev_priv->runtime_pm);

 mutex_lock(&dev_priv->ggtt.vm.mutex);
 _clear_vgpu_fence(vgpu);
 for (i = 0; i < vgpu_fence_sz(vgpu); i++) {
  reg = vgpu->fence.regs[i];
  i915_unreserve_fence(reg);
  vgpu->fence.regs[i] = ((void*)0);
 }
 mutex_unlock(&dev_priv->ggtt.vm.mutex);

 intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
}
