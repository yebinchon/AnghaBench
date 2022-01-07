
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct i915_fence_reg** regs; } ;
struct intel_vgpu {TYPE_1__ fence; struct intel_gvt* gvt; } ;
struct intel_runtime_pm {int dummy; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct i915_fence_reg {int dummy; } ;
struct TYPE_5__ {int mutex; } ;
struct TYPE_6__ {TYPE_2__ vm; } ;
struct drm_i915_private {TYPE_3__ ggtt; struct intel_runtime_pm runtime_pm; } ;


 int ENOSPC ;
 scalar_t__ IS_ERR (struct i915_fence_reg*) ;
 int _clear_vgpu_fence (struct intel_vgpu*) ;
 int gvt_vgpu_err (char*) ;
 struct i915_fence_reg* i915_reserve_fence (struct drm_i915_private*) ;
 int i915_unreserve_fence (struct i915_fence_reg*) ;
 int intel_runtime_pm_get (struct intel_runtime_pm*) ;
 int intel_runtime_pm_put_unchecked (struct intel_runtime_pm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgpu_fence_sz (struct intel_vgpu*) ;

__attribute__((used)) static int alloc_vgpu_fence(struct intel_vgpu *vgpu)
{
 struct intel_gvt *gvt = vgpu->gvt;
 struct drm_i915_private *dev_priv = gvt->dev_priv;
 struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 struct i915_fence_reg *reg;
 int i;

 intel_runtime_pm_get(rpm);


 mutex_lock(&dev_priv->ggtt.vm.mutex);

 for (i = 0; i < vgpu_fence_sz(vgpu); i++) {
  reg = i915_reserve_fence(dev_priv);
  if (IS_ERR(reg))
   goto out_free_fence;

  vgpu->fence.regs[i] = reg;
 }

 _clear_vgpu_fence(vgpu);

 mutex_unlock(&dev_priv->ggtt.vm.mutex);
 intel_runtime_pm_put_unchecked(rpm);
 return 0;
out_free_fence:
 gvt_vgpu_err("Failed to alloc fences\n");

 for (i = 0; i < vgpu_fence_sz(vgpu); i++) {
  reg = vgpu->fence.regs[i];
  if (!reg)
   continue;
  i915_unreserve_fence(reg);
  vgpu->fence.regs[i] = ((void*)0);
 }
 mutex_unlock(&dev_priv->ggtt.vm.mutex);
 intel_runtime_pm_put_unchecked(rpm);
 return -ENOSPC;
}
