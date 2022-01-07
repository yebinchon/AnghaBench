
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {TYPE_2__* fw; } ;
struct amdgpu_device {scalar_t__ asic_type; int has_hw_reset; TYPE_1__ pm; int dev; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 scalar_t__ CHIP_BONAIRE ;
 scalar_t__ CHIP_FIJI ;
 int amdgpu_asic_get_config_memsize (struct amdgpu_device*) ;
 int amdgpu_atombios_scratch_need_asic_init (struct amdgpu_device*) ;
 scalar_t__ amdgpu_passthrough (struct amdgpu_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int request_firmware (TYPE_2__**,char*,int ) ;

bool amdgpu_device_need_post(struct amdgpu_device *adev)
{
 uint32_t reg;

 if (amdgpu_sriov_vf(adev))
  return 0;

 if (amdgpu_passthrough(adev)) {





  if (adev->asic_type == CHIP_FIJI) {
   int err;
   uint32_t fw_ver;
   err = request_firmware(&adev->pm.fw, "amdgpu/fiji_smc.bin", adev->dev);

   if (err)
    return 1;

   fw_ver = *((uint32_t *)adev->pm.fw->data + 69);
   if (fw_ver < 0x00160e00)
    return 1;
  }
 }

 if (adev->has_hw_reset) {
  adev->has_hw_reset = 0;
  return 1;
 }


 if (adev->asic_type >= CHIP_BONAIRE)
  return amdgpu_atombios_scratch_need_asic_init(adev);


 reg = amdgpu_asic_get_config_memsize(adev);

 if ((reg != 0) && (reg != 0xffffffff))
  return 0;

 return 1;
}
