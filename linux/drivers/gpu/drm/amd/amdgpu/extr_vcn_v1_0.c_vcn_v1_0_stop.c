
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int pg_flags; } ;


 int AMD_PG_SUPPORT_VCN_DPG ;
 int vcn_v1_0_stop_dpg_mode (struct amdgpu_device*) ;
 int vcn_v1_0_stop_spg_mode (struct amdgpu_device*) ;

__attribute__((used)) static int vcn_v1_0_stop(struct amdgpu_device *adev)
{
 int r;

 if (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG)
  r = vcn_v1_0_stop_dpg_mode(adev);
 else
  r = vcn_v1_0_stop_spg_mode(adev);

 return r;
}
