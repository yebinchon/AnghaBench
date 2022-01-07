
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_VCE_MGCG ;
 int vce_v2_0_disable_cg (struct amdgpu_device*) ;
 int vce_v2_0_set_dyn_cg (struct amdgpu_device*,int) ;
 int vce_v2_0_set_sw_cg (struct amdgpu_device*,int) ;

__attribute__((used)) static void vce_v2_0_enable_mgcg(struct amdgpu_device *adev, bool enable,
        bool sw_cg)
{
 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_VCE_MGCG)) {
  if (sw_cg)
   vce_v2_0_set_sw_cg(adev, 1);
  else
   vce_v2_0_set_dyn_cg(adev, 1);
 } else {
  vce_v2_0_disable_cg(adev);

  if (sw_cg)
   vce_v2_0_set_sw_cg(adev, 0);
  else
   vce_v2_0_set_dyn_cg(adev, 0);
 }
}
