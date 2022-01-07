
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int GLOBAL_PWRMGT_EN ;
 int RREG32 (int ) ;

bool rv770_dpm_enabled(struct radeon_device *rdev)
{
 if (RREG32(GENERAL_PWRMGT) & GLOBAL_PWRMGT_EN)
  return 1;
 else
  return 0;
}
