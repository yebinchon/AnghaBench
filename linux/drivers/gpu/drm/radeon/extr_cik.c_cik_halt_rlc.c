
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int usec_timeout; } ;


 int RLC_CNTL ;
 int RLC_ENABLE ;
 int RLC_GPM_BUSY ;
 int RLC_GPM_STAT ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int cik_wait_for_rlc_serdes (struct radeon_device*) ;
 int udelay (int) ;

__attribute__((used)) static u32 cik_halt_rlc(struct radeon_device *rdev)
{
 u32 data, orig;

 orig = data = RREG32(RLC_CNTL);

 if (data & RLC_ENABLE) {
  u32 i;

  data &= ~RLC_ENABLE;
  WREG32(RLC_CNTL, data);

  for (i = 0; i < rdev->usec_timeout; i++) {
   if ((RREG32(RLC_GPM_STAT) & RLC_GPM_BUSY) == 0)
    break;
   udelay(1);
  }

  cik_wait_for_rlc_serdes(rdev);
 }

 return orig;
}
