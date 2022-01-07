
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct intel_vgpu {int dummy; } ;


 int gvt_dbg_mm (char*,scalar_t__,scalar_t__) ;
 scalar_t__ vgpu_gmadr_is_aperture (struct intel_vgpu*,scalar_t__) ;
 scalar_t__ vgpu_gmadr_is_hidden (struct intel_vgpu*,scalar_t__) ;
 int vgpu_gmadr_is_valid (struct intel_vgpu*,scalar_t__) ;

bool intel_gvt_ggtt_validate_range(struct intel_vgpu *vgpu, u64 addr, u32 size)
{
 if (size == 0)
  return vgpu_gmadr_is_valid(vgpu, addr);

 if (vgpu_gmadr_is_aperture(vgpu, addr) &&
     vgpu_gmadr_is_aperture(vgpu, addr + size - 1))
  return 1;
 else if (vgpu_gmadr_is_hidden(vgpu, addr) &&
   vgpu_gmadr_is_hidden(vgpu, addr + size - 1))
  return 1;

 gvt_dbg_mm("Invalid ggtt range at 0x%llx, size: 0x%x\n",
       addr, size);
 return 0;
}
