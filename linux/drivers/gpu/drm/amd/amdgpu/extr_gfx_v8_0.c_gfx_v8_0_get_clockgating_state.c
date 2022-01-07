
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int AMD_CG_SUPPORT_GFX_CGCG ;
 int AMD_CG_SUPPORT_GFX_CGLS ;
 int AMD_CG_SUPPORT_GFX_CGTS ;
 int AMD_CG_SUPPORT_GFX_CGTS_LS ;
 int AMD_CG_SUPPORT_GFX_CP_LS ;
 int AMD_CG_SUPPORT_GFX_MGCG ;
 int AMD_CG_SUPPORT_GFX_MGLS ;
 int AMD_CG_SUPPORT_GFX_RLC_LS ;
 int CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK ;
 int CGTS_SM_CTRL_REG__OVERRIDE_MASK ;
 int CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK ;
 int RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK ;
 int RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK ;
 int RLC_CGTT_MGCG_OVERRIDE__CPF_MASK ;
 int RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK ;
 int RREG32 (int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mmCGTS_SM_CTRL_REG ;
 int mmCP_MEM_SLP_CNTL ;
 int mmRLC_CGCG_CGLS_CTRL ;
 int mmRLC_CGTT_MGCG_OVERRIDE ;
 int mmRLC_MEM_SLP_CNTL ;

__attribute__((used)) static void gfx_v8_0_get_clockgating_state(void *handle, u32 *flags)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int data;

 if (amdgpu_sriov_vf(adev))
  *flags = 0;


 data = RREG32(mmRLC_CGTT_MGCG_OVERRIDE);
 if (!(data & RLC_CGTT_MGCG_OVERRIDE__CPF_MASK))
  *flags |= AMD_CG_SUPPORT_GFX_MGCG;


 data = RREG32(mmRLC_CGCG_CGLS_CTRL);
 if (data & RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK)
  *flags |= AMD_CG_SUPPORT_GFX_CGCG;


 if (data & RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK)
  *flags |= AMD_CG_SUPPORT_GFX_CGLS;


 data = RREG32(mmCGTS_SM_CTRL_REG);
 if (!(data & CGTS_SM_CTRL_REG__OVERRIDE_MASK))
  *flags |= AMD_CG_SUPPORT_GFX_CGTS;


 if (!(data & CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK))
  *flags |= AMD_CG_SUPPORT_GFX_CGTS_LS;


 data = RREG32(mmRLC_MEM_SLP_CNTL);
 if (data & RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK)
  *flags |= AMD_CG_SUPPORT_GFX_RLC_LS | AMD_CG_SUPPORT_GFX_MGLS;


 data = RREG32(mmCP_MEM_SLP_CNTL);
 if (data & CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK)
  *flags |= AMD_CG_SUPPORT_GFX_CP_LS | AMD_CG_SUPPORT_GFX_MGLS;
}
