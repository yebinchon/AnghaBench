
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef int CP_PIPE_ID ;


 int GC ;
 int GRBM_GFX_CNTL ;
 int PIPEID ;
 int REG_SET_FIELD (int ,int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmGRBM_GFX_CNTL ;

__attribute__((used)) static void gfx_v10_0_cp_gfx_switch_pipe(struct amdgpu_device *adev,
      CP_PIPE_ID pipe)
{
 u32 tmp;

 tmp = RREG32_SOC15(GC, 0, mmGRBM_GFX_CNTL);
 tmp = REG_SET_FIELD(tmp, GRBM_GFX_CNTL, PIPEID, pipe);

 WREG32_SOC15(GC, 0, mmGRBM_GFX_CNTL, tmp);
}
