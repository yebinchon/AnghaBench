
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {unsigned int usec_timeout; } ;


 int CMD ;
 int GC ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int RLC_SAFE_MODE ;
 int RLC_SAFE_MODE__CMD_MASK ;
 int RLC_SAFE_MODE__MESSAGE__SHIFT ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmRLC_SAFE_MODE ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v9_0_set_safe_mode(struct amdgpu_device *adev)
{
 uint32_t data;
 unsigned i;

 data = RLC_SAFE_MODE__CMD_MASK;
 data |= (1 << RLC_SAFE_MODE__MESSAGE__SHIFT);
 WREG32_SOC15(GC, 0, mmRLC_SAFE_MODE, data);


 for (i = 0; i < adev->usec_timeout; i++) {
  if (!REG_GET_FIELD(RREG32_SOC15(GC, 0, mmRLC_SAFE_MODE), RLC_SAFE_MODE, CMD))
   break;
  udelay(1);
 }
}
