
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int REG_SET_FIELD (int ,int ,int ,int ) ;
 int RLC_CNTL ;
 int RLC_ENABLE_F32 ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmRLC_CNTL ;

void gfx_v10_0_rlc_stop(struct amdgpu_device *adev)
{
 u32 tmp = RREG32_SOC15(GC, 0, mmRLC_CNTL);

 tmp = REG_SET_FIELD(tmp, RLC_CNTL, RLC_ENABLE_F32, 0);
 WREG32_SOC15(GC, 0, mmRLC_CNTL, tmp);
}
