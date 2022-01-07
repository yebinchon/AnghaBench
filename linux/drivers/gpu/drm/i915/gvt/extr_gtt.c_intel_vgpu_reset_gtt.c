
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int intel_vgpu_destroy_all_ppgtt_mm (struct intel_vgpu*) ;
 int intel_vgpu_reset_ggtt (struct intel_vgpu*,int) ;

void intel_vgpu_reset_gtt(struct intel_vgpu *vgpu)
{




 intel_vgpu_destroy_all_ppgtt_mm(vgpu);
 intel_vgpu_reset_ggtt(vgpu, 1);
}
