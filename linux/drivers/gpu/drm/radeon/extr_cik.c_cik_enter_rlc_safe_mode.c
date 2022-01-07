
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {scalar_t__ usec_timeout; } ;


 scalar_t__ GFX_CLOCK_STATUS ;
 scalar_t__ GFX_POWER_STATUS ;
 scalar_t__ MESSAGE (int ) ;
 int MSG_ENTER_RLC_SAFE_MODE ;
 scalar_t__ REQ ;
 int RLC_GPM_STAT ;
 int RLC_GPR_REG2 ;
 scalar_t__ RREG32 (int ) ;
 int WREG32 (int ,scalar_t__) ;
 int udelay (int) ;

void cik_enter_rlc_safe_mode(struct radeon_device *rdev)
{
 u32 tmp, i, mask;

 tmp = REQ | MESSAGE(MSG_ENTER_RLC_SAFE_MODE);
 WREG32(RLC_GPR_REG2, tmp);

 mask = GFX_POWER_STATUS | GFX_CLOCK_STATUS;
 for (i = 0; i < rdev->usec_timeout; i++) {
  if ((RREG32(RLC_GPM_STAT) & mask) == mask)
   break;
  udelay(1);
 }

 for (i = 0; i < rdev->usec_timeout; i++) {
  if ((RREG32(RLC_GPR_REG2) & REQ) == 0)
   break;
  udelay(1);
 }
}
