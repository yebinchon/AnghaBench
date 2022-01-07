
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ family; } ;


 scalar_t__ CHIP_KABINI ;
 scalar_t__ CHIP_MULLINS ;
 int PPSMC_MSG_NoForcedLevel ;
 int kv_notify_message_to_smu (struct radeon_device*,int ) ;
 int kv_set_enabled_levels (struct radeon_device*) ;

__attribute__((used)) static int kv_unforce_levels(struct radeon_device *rdev)
{
 if (rdev->family == CHIP_KABINI || rdev->family == CHIP_MULLINS)
  return kv_notify_message_to_smu(rdev, PPSMC_MSG_NoForcedLevel);
 else
  return kv_set_enabled_levels(rdev);
}
