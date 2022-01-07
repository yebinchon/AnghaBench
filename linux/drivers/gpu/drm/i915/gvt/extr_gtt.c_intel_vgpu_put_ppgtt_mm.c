
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_vgpu_mm {int dummy; } ;
struct intel_vgpu {int dummy; } ;


 int EINVAL ;
 int gvt_vgpu_err (char*) ;
 struct intel_vgpu_mm* intel_vgpu_find_ppgtt_mm (struct intel_vgpu*,int *) ;
 int intel_vgpu_mm_put (struct intel_vgpu_mm*) ;

int intel_vgpu_put_ppgtt_mm(struct intel_vgpu *vgpu, u64 pdps[])
{
 struct intel_vgpu_mm *mm;

 mm = intel_vgpu_find_ppgtt_mm(vgpu, pdps);
 if (!mm) {
  gvt_vgpu_err("fail to find ppgtt instance.\n");
  return -EINVAL;
 }
 intel_vgpu_mm_put(mm);
 return 0;
}
