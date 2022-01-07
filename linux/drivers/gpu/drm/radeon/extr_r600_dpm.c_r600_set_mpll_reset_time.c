
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int MPLL_RESET_TIME (int ) ;
 int MPLL_RESET_TIME_MASK ;
 int MPLL_TIME ;
 int WREG32_P (int ,int ,int ) ;

void r600_set_mpll_reset_time(struct radeon_device *rdev, u32 reset_time)
{
 WREG32_P(MPLL_TIME, MPLL_RESET_TIME(reset_time), ~MPLL_RESET_TIME_MASK);
}
