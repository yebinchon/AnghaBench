
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RCU_FW_VERSION ;
 int RREG32_RCU (int ) ;

u32 sumo_get_running_fw_version(struct radeon_device *rdev)
{
 return RREG32_RCU(RCU_FW_VERSION);
}
