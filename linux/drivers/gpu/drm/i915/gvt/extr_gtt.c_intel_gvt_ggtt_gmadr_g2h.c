
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct intel_vgpu {int dummy; } ;


 int EACCES ;
 scalar_t__ WARN (int,char*,scalar_t__) ;
 scalar_t__ vgpu_aperture_gmadr_base (struct intel_vgpu*) ;
 scalar_t__ vgpu_aperture_offset (struct intel_vgpu*) ;
 scalar_t__ vgpu_gmadr_is_aperture (struct intel_vgpu*,scalar_t__) ;
 int vgpu_gmadr_is_valid (struct intel_vgpu*,scalar_t__) ;
 scalar_t__ vgpu_hidden_gmadr_base (struct intel_vgpu*) ;
 scalar_t__ vgpu_hidden_offset (struct intel_vgpu*) ;

int intel_gvt_ggtt_gmadr_g2h(struct intel_vgpu *vgpu, u64 g_addr, u64 *h_addr)
{
 if (WARN(!vgpu_gmadr_is_valid(vgpu, g_addr),
   "invalid guest gmadr %llx\n", g_addr))
  return -EACCES;

 if (vgpu_gmadr_is_aperture(vgpu, g_addr))
  *h_addr = vgpu_aperture_gmadr_base(vgpu)
     + (g_addr - vgpu_aperture_offset(vgpu));
 else
  *h_addr = vgpu_hidden_gmadr_base(vgpu)
     + (g_addr - vgpu_hidden_offset(vgpu));
 return 0;
}
