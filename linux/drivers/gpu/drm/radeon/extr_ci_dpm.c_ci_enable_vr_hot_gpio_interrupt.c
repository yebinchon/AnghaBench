
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int platform_caps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int ATOM_PP_PLATFORM_CAP_REGULATOR_HOT ;
 int PPSMC_MSG_EnableVRHotGPIOInterrupt ;
 int ci_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static void ci_enable_vr_hot_gpio_interrupt(struct radeon_device *rdev)
{
 if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_REGULATOR_HOT)
  ci_send_msg_to_smc(rdev, PPSMC_MSG_EnableVRHotGPIOInterrupt);
}
