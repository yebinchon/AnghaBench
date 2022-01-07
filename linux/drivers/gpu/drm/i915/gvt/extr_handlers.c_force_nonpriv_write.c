
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_vgpu {int id; TYPE_2__* gvt; } ;
struct drm_i915_private {TYPE_1__** engine; } ;
struct TYPE_4__ {struct drm_i915_private* dev_priv; } ;
struct TYPE_3__ {int mmio_base; } ;


 int EINVAL ;
 int RING_NOPID (int ) ;
 int gvt_err (char*,int ,int,unsigned int,...) ;
 int i915_mmio_reg_offset (int ) ;
 scalar_t__ in_whitelist (int ) ;
 int intel_gvt_render_mmio_to_ring_id (TYPE_2__*,unsigned int) ;
 int intel_vgpu_default_mmio_write (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int force_nonpriv_write(struct intel_vgpu *vgpu,
 unsigned int offset, void *p_data, unsigned int bytes)
{
 u32 reg_nonpriv = *(u32 *)p_data;
 int ring_id = intel_gvt_render_mmio_to_ring_id(vgpu->gvt, offset);
 u32 ring_base;
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
 int ret = -EINVAL;

 if ((bytes != 4) || ((offset & (bytes - 1)) != 0) || ring_id < 0) {
  gvt_err("vgpu(%d) ring %d Invalid FORCE_NONPRIV offset %x(%dB)\n",
   vgpu->id, ring_id, offset, bytes);
  return ret;
 }

 ring_base = dev_priv->engine[ring_id]->mmio_base;

 if (in_whitelist(reg_nonpriv) ||
  reg_nonpriv == i915_mmio_reg_offset(RING_NOPID(ring_base))) {
  ret = intel_vgpu_default_mmio_write(vgpu, offset, p_data,
   bytes);
 } else
  gvt_err("vgpu(%d) Invalid FORCE_NONPRIV write %x at offset %x\n",
   vgpu->id, reg_nonpriv, offset);

 return 0;
}
