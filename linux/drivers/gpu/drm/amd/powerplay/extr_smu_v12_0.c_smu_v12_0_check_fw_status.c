
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int EIO ;
 int MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED_MASK ;
 int MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED__SHIFT ;
 int MP1_Public ;
 int RREG32_PCIE (int) ;
 int smnMP1_FIRMWARE_FLAGS ;

__attribute__((used)) static int smu_v12_0_check_fw_status(struct smu_context *smu)
{
 struct amdgpu_device *adev = smu->adev;
 uint32_t mp1_fw_flags;

 mp1_fw_flags = RREG32_PCIE(MP1_Public |
  (smnMP1_FIRMWARE_FLAGS & 0xffffffff));

 if ((mp1_fw_flags & MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED_MASK) >>
  MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED__SHIFT)
  return 0;

 return -EIO;
}
