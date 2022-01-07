
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct radeon_device {int dummy; } ;


 int CG_CAC_CTRL ;
 unsigned long RREG32 (int ) ;
 unsigned long TID_CNT_MASK ;
 unsigned long radeon_get_xclk (struct radeon_device*) ;

__attribute__((used)) static u32 ni_get_smc_power_scaling_factor(struct radeon_device *rdev)
{
 u32 xclk_period;
 u32 xclk = radeon_get_xclk(rdev);
 u32 tmp = RREG32(CG_CAC_CTRL) & TID_CNT_MASK;

 xclk_period = (1000000000UL / xclk);
 xclk_period /= 10000UL;

 return tmp * xclk_period;
}
