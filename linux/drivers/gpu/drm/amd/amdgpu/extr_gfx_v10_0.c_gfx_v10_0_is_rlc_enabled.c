
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 scalar_t__ REG_GET_FIELD (int ,int ,int ) ;
 int RLC_CNTL ;
 int RLC_ENABLE_F32 ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmRLC_CNTL ;

__attribute__((used)) static bool gfx_v10_0_is_rlc_enabled(struct amdgpu_device *adev)
{
 uint32_t rlc_cntl;


 rlc_cntl = RREG32_SOC15(GC, 0, mmRLC_CNTL);
 return (REG_GET_FIELD(rlc_cntl, RLC_CNTL, RLC_ENABLE_F32)) ? 1 : 0;
}
