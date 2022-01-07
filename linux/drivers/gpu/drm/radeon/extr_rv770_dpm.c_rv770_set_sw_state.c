
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int DRM_DEBUG (char*) ;
 int PPSMC_MSG_SwitchToSwState ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ rv770_send_msg_to_smc (struct radeon_device*,int ) ;

int rv770_set_sw_state(struct radeon_device *rdev)
{
 if (rv770_send_msg_to_smc(rdev, PPSMC_MSG_SwitchToSwState) != PPSMC_Result_OK)
  DRM_DEBUG("rv770_set_sw_state failed\n");
 return 0;
}
