
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_vgpu_mm {int dummy; } ;
struct intel_vgpu {int dummy; } ;
typedef enum intel_gvt_gtt_type { ____Placeholder_intel_gvt_gtt_type } intel_gvt_gtt_type ;


 scalar_t__ IS_ERR (struct intel_vgpu_mm*) ;
 int gvt_vgpu_err (char*) ;
 struct intel_vgpu_mm* intel_vgpu_create_ppgtt_mm (struct intel_vgpu*,int,int *) ;
 struct intel_vgpu_mm* intel_vgpu_find_ppgtt_mm (struct intel_vgpu*,int *) ;
 int intel_vgpu_mm_get (struct intel_vgpu_mm*) ;

struct intel_vgpu_mm *intel_vgpu_get_ppgtt_mm(struct intel_vgpu *vgpu,
  enum intel_gvt_gtt_type root_entry_type, u64 pdps[])
{
 struct intel_vgpu_mm *mm;

 mm = intel_vgpu_find_ppgtt_mm(vgpu, pdps);
 if (mm) {
  intel_vgpu_mm_get(mm);
 } else {
  mm = intel_vgpu_create_ppgtt_mm(vgpu, root_entry_type, pdps);
  if (IS_ERR(mm))
   gvt_vgpu_err("fail to create mm\n");
 }
 return mm;
}
