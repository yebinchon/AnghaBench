
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_vgpu {int id; int * hws_pga; int gvt; } ;


 int EINVAL ;
 int I915_GTT_PAGE_SIZE ;
 int I915_NUM_ENGINES ;
 int gvt_dbg_mmio (char*,int ,int ,unsigned int) ;
 int gvt_vgpu_err (char*,unsigned int,...) ;
 int intel_gvt_ggtt_validate_range (struct intel_vgpu*,int ,int ) ;
 int intel_gvt_render_mmio_to_ring_id (int ,unsigned int) ;
 int intel_vgpu_default_mmio_write (struct intel_vgpu*,unsigned int,int *,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hws_pga_write(struct intel_vgpu *vgpu, unsigned int offset,
  void *p_data, unsigned int bytes)
{
 u32 value = *(u32 *)p_data;
 int ring_id = intel_gvt_render_mmio_to_ring_id(vgpu->gvt, offset);

 if (!intel_gvt_ggtt_validate_range(vgpu, value, I915_GTT_PAGE_SIZE)) {
  gvt_vgpu_err("write invalid HWSP address, reg:0x%x, value:0x%x\n",
         offset, value);
  return -EINVAL;
 }





 if (unlikely(ring_id < 0 || ring_id >= I915_NUM_ENGINES)) {
  gvt_vgpu_err("access unknown hardware status page register:0x%x\n",
        offset);
  return -EINVAL;
 }
 vgpu->hws_pga[ring_id] = value;
 gvt_dbg_mmio("VM(%d) write: 0x%x to HWSP: 0x%x\n",
       vgpu->id, value, offset);

 return intel_vgpu_default_mmio_write(vgpu, offset, &value, bytes);
}
