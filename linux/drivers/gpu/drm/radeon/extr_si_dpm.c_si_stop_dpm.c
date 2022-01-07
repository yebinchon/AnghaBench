
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int GLOBAL_PWRMGT_EN ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void si_stop_dpm(struct radeon_device *rdev)
{
 WREG32_P(GENERAL_PWRMGT, 0, ~GLOBAL_PWRMGT_EN);
}
