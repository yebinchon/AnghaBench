
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int GRBM_SOFT_RESET ;
 int RREG32 (int ) ;
 int SOFT_RESET_RLC ;
 int WREG32 (int ,int ) ;
 int udelay (int) ;

void si_rlc_reset(struct radeon_device *rdev)
{
 u32 tmp = RREG32(GRBM_SOFT_RESET);

 tmp |= SOFT_RESET_RLC;
 WREG32(GRBM_SOFT_RESET, tmp);
 udelay(50);
 tmp &= ~SOFT_RESET_RLC;
 WREG32(GRBM_SOFT_RESET, tmp);
 udelay(50);
}
