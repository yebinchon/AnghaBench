
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;
typedef enum amdgpu_firmware_load_type { ____Placeholder_amdgpu_firmware_load_type } amdgpu_firmware_load_type ;


 int AMDGPU_FW_LOAD_DIRECT ;
 int AMDGPU_FW_LOAD_PSP ;
 int AMDGPU_FW_LOAD_SMU ;
 int DRM_ERROR (char*) ;

enum amdgpu_firmware_load_type
amdgpu_ucode_get_load_type(struct amdgpu_device *adev, int load_type)
{
 switch (adev->asic_type) {
 case 133:
 case 134:
 case 152:
 case 153:
 case 136:
 case 141:
 case 140:
 case 139:
 case 129:
  return AMDGPU_FW_LOAD_SMU;
 case 132:
 case 138:
 case 131:
 case 130:
 case 137:
 case 146:
 case 144:
 case 145:
  if (!load_type)
   return AMDGPU_FW_LOAD_DIRECT;
  else
   return AMDGPU_FW_LOAD_PSP;
 case 155:
  return AMDGPU_FW_LOAD_DIRECT;

 default:
  DRM_ERROR("Unknown firmware load type\n");
 }

 return AMDGPU_FW_LOAD_DIRECT;
}
