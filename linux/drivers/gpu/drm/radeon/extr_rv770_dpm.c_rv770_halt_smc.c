
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int EINVAL ;
 int PPSMC_MSG_Halt ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ rv770_send_msg_to_smc (struct radeon_device*,int ) ;
 scalar_t__ rv770_wait_for_smc_inactive (struct radeon_device*) ;

int rv770_halt_smc(struct radeon_device *rdev)
{
 if (rv770_send_msg_to_smc(rdev, PPSMC_MSG_Halt) != PPSMC_Result_OK)
  return -EINVAL;

 if (rv770_wait_for_smc_inactive(rdev) != PPSMC_Result_OK)
  return -EINVAL;

 return 0;
}
