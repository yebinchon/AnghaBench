
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_firmware_info {int ucode_size; int fw; } ;
struct TYPE_2__ {struct amdgpu_firmware_info* ucode; int fw_size; } ;
struct amdgpu_device {int psp; TYPE_1__ firmware; } ;
typedef enum AMDGPU_UCODE_ID { ____Placeholder_AMDGPU_UCODE_ID } AMDGPU_UCODE_ID ;


 int psp_compare_sram_data (int *,struct amdgpu_firmware_info*,int) ;

__attribute__((used)) static bool psp_check_fw_loading_status(struct amdgpu_device *adev,
     enum AMDGPU_UCODE_ID ucode_type)
{
 struct amdgpu_firmware_info *ucode = ((void*)0);

 if (!adev->firmware.fw_size)
  return 0;

 ucode = &adev->firmware.ucode[ucode_type];
 if (!ucode->fw || !ucode->ucode_size)
  return 0;

 return psp_compare_sram_data(&adev->psp, ucode, ucode_type);
}
