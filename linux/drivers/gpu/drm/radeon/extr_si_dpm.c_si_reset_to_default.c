
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int EINVAL ;
 int PPSMC_MSG_ResetToDefaults ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ si_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int si_reset_to_default(struct radeon_device *rdev)
{
 return (si_send_msg_to_smc(rdev, PPSMC_MSG_ResetToDefaults) == PPSMC_Result_OK) ?
  0 : -EINVAL;
}
