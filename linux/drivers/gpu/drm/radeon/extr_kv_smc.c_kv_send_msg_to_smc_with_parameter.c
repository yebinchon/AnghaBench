
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
typedef int PPSMC_Msg ;


 int SMC_MSG_ARG_0 ;
 int WREG32 (int ,int ) ;
 int kv_notify_message_to_smu (struct radeon_device*,int ) ;

int kv_send_msg_to_smc_with_parameter(struct radeon_device *rdev,
          PPSMC_Msg msg, u32 parameter)
{

 WREG32(SMC_MSG_ARG_0, parameter);

 return kv_notify_message_to_smu(rdev, msg);
}
