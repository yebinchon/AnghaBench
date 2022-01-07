
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_MC_MGCG ;
 int DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK ;
 int DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK ;
 int MMHUB ;
 int MM_ATC_L2_MISC_CG__ENABLE_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmDAGB0_CNTL_MISC2 ;
 int mmMM_ATC_L2_MISC_CG ;

__attribute__((used)) static void mmhub_v2_0_update_medium_grain_clock_gating(struct amdgpu_device *adev,
       bool enable)
{
 uint32_t def, data, def1, data1;

 def = data = RREG32_SOC15(MMHUB, 0, mmMM_ATC_L2_MISC_CG);

 def1 = data1 = RREG32_SOC15(MMHUB, 0, mmDAGB0_CNTL_MISC2);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_MC_MGCG)) {
  data |= MM_ATC_L2_MISC_CG__ENABLE_MASK;

  data1 &= ~(DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK |
             DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK |
             DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK |
             DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK |
             DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK |
             DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK);

 } else {
  data &= ~MM_ATC_L2_MISC_CG__ENABLE_MASK;

  data1 |= (DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK |
     DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK |
     DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK |
     DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK |
     DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK |
     DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK);
 }

 if (def != data)
  WREG32_SOC15(MMHUB, 0, mmMM_ATC_L2_MISC_CG, data);

 if (def1 != data1)
  WREG32_SOC15(MMHUB, 0, mmDAGB0_CNTL_MISC2, data1);
}
