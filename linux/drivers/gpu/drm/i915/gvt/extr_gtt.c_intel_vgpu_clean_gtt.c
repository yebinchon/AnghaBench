
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int intel_vgpu_destroy_all_ppgtt_mm (struct intel_vgpu*) ;
 int intel_vgpu_destroy_ggtt_mm (struct intel_vgpu*) ;
 int release_scratch_page_tree (struct intel_vgpu*) ;

void intel_vgpu_clean_gtt(struct intel_vgpu *vgpu)
{
 intel_vgpu_destroy_all_ppgtt_mm(vgpu);
 intel_vgpu_destroy_ggtt_mm(vgpu);
 release_scratch_page_tree(vgpu);
}
