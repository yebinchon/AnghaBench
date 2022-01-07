
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int AMD_CG_SUPPORT_MC_LS ;
 int AMD_CG_SUPPORT_MC_MGCG ;
 int ATC_L2_MISC_CG__ENABLE_MASK ;
 int ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK ;
 int MMHUB ;
 int RREG32_SOC15 (int ,int ,int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mmATC_L2_MISC_CG ;
 int mmDAGB0_CNTL_MISC2 ;

void mmhub_v1_0_get_clockgating(struct amdgpu_device *adev, u32 *flags)
{
 int data, data1;

 if (amdgpu_sriov_vf(adev))
  *flags = 0;

 data = RREG32_SOC15(MMHUB, 0, mmATC_L2_MISC_CG);

 data1 = RREG32_SOC15(MMHUB, 0, mmDAGB0_CNTL_MISC2);


 if ((data & ATC_L2_MISC_CG__ENABLE_MASK) &&
     !(data1 & (DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK |
         DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK |
         DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK |
         DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK |
         DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK |
         DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK)))
  *flags |= AMD_CG_SUPPORT_MC_MGCG;


 if (data & ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK)
  *flags |= AMD_CG_SUPPORT_MC_LS;
}
