
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RLC_CNTL ;
 int RLC_ENABLE ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int si_wait_for_rlc_serdes (struct radeon_device*) ;

__attribute__((used)) static u32 si_halt_rlc(struct radeon_device *rdev)
{
 u32 data, orig;

 orig = data = RREG32(RLC_CNTL);

 if (data & RLC_ENABLE) {
  data &= ~RLC_ENABLE;
  WREG32(RLC_CNTL, data);

  si_wait_for_rlc_serdes(rdev);
 }

 return orig;
}
