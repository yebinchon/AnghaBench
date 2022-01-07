
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int RLC_CNTL__RLC_ENABLE_F32_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmRLC_CNTL ;

__attribute__((used)) static bool gfx_v9_0_is_rlc_enabled(struct amdgpu_device *adev)
{
 uint32_t rlc_setting;


 rlc_setting = RREG32_SOC15(GC, 0, mmRLC_CNTL);
 if (!(rlc_setting & RLC_CNTL__RLC_ENABLE_F32_MASK))
  return 0;

 return 1;
}
