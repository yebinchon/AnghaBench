
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int MPLL_LOCK_TIME (int ) ;
 int MPLL_LOCK_TIME_MASK ;
 int MPLL_TIME ;
 int WREG32_P (int ,int ,int ) ;

void r600_set_mpll_lock_time(struct radeon_device *rdev, u32 lock_time)
{
 WREG32_P(MPLL_TIME, MPLL_LOCK_TIME(lock_time), ~MPLL_LOCK_TIME_MASK);
}
