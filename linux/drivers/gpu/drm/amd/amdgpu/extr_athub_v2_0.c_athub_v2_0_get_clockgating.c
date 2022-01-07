
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int AMD_CG_SUPPORT_ATHUB_LS ;
 int AMD_CG_SUPPORT_ATHUB_MGCG ;
 int ATHUB ;
 int ATHUB_MISC_CNTL__CG_ENABLE_MASK ;
 int ATHUB_MISC_CNTL__CG_MEM_LS_ENABLE_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmATHUB_MISC_CNTL ;

void athub_v2_0_get_clockgating(struct amdgpu_device *adev, u32 *flags)
{
 int data;


 data = RREG32_SOC15(ATHUB, 0, mmATHUB_MISC_CNTL);
 if (data & ATHUB_MISC_CNTL__CG_ENABLE_MASK)
  *flags |= AMD_CG_SUPPORT_ATHUB_MGCG;


 if (data & ATHUB_MISC_CNTL__CG_MEM_LS_ENABLE_MASK)
  *flags |= AMD_CG_SUPPORT_ATHUB_LS;
}
