
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED_MASK ;
 int MP1_Public ;
 int RREG32_PCIE (int) ;
 int smnMP1_FIRMWARE_FLAGS ;

bool smu9_is_smc_ram_running(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;
 uint32_t mp1_fw_flags;

 mp1_fw_flags = RREG32_PCIE(MP1_Public |
       (smnMP1_FIRMWARE_FLAGS & 0xffffffff));

 if (mp1_fw_flags & MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED_MASK)
  return 1;

 return 0;
}
