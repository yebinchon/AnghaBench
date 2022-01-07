
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;


 int fence_num_to_offset (unsigned int) ;
 int intel_vgpu_write_fence (struct intel_vgpu*,unsigned int,int ) ;
 int mmio_hw_access_post (struct drm_i915_private*) ;
 int mmio_hw_access_pre (struct drm_i915_private*) ;
 unsigned int offset_to_fence_num (unsigned int) ;
 int sanitize_fence_mmio_access (struct intel_vgpu*,unsigned int,void*,unsigned int) ;
 int vgpu_vreg64 (struct intel_vgpu*,int ) ;
 int write_vreg (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int fence_mmio_write(struct intel_vgpu *vgpu, unsigned int off,
  void *p_data, unsigned int bytes)
{
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
 unsigned int fence_num = offset_to_fence_num(off);
 int ret;

 ret = sanitize_fence_mmio_access(vgpu, fence_num, p_data, bytes);
 if (ret)
  return ret;
 write_vreg(vgpu, off, p_data, bytes);

 mmio_hw_access_pre(dev_priv);
 intel_vgpu_write_fence(vgpu, fence_num,
   vgpu_vreg64(vgpu, fence_num_to_offset(fence_num)));
 mmio_hw_access_post(dev_priv);
 return 0;
}
