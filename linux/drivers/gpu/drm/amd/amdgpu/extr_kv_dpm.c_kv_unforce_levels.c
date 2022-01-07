
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {scalar_t__ asic_type; } ;


 scalar_t__ CHIP_KABINI ;
 scalar_t__ CHIP_MULLINS ;
 int PPSMC_MSG_NoForcedLevel ;
 int amdgpu_kv_notify_message_to_smu (struct amdgpu_device*,int ) ;
 int kv_set_enabled_levels (struct amdgpu_device*) ;

__attribute__((used)) static int kv_unforce_levels(struct amdgpu_device *adev)
{
 if (adev->asic_type == CHIP_KABINI || adev->asic_type == CHIP_MULLINS)
  return amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_NoForcedLevel);
 else
  return kv_set_enabled_levels(adev);
}
