
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RCU_ALTVDDNB_NOTIFY ;
 int SUMO_SMU_SERVICE_ROUTINE_ALTVDDNB_NOTIFY ;
 int WREG32_RCU (int ,int) ;
 int sumo_is_alt_vddnb_supported (struct radeon_device*) ;
 int sumo_send_msg_to_smu (struct radeon_device*,int ) ;

void sumo_smu_notify_alt_vddnb_change(struct radeon_device *rdev,
          bool powersaving, bool force_nbps1)
{
 u32 param = 0;

 if (!sumo_is_alt_vddnb_supported(rdev))
  return;

 if (powersaving)
  param |= 1;

 if (force_nbps1)
  param |= 2;

 WREG32_RCU(RCU_ALTVDDNB_NOTIFY, param);

 sumo_send_msg_to_smu(rdev, SUMO_SMU_SERVICE_ROUTINE_ALTVDDNB_NOTIFY);
}
