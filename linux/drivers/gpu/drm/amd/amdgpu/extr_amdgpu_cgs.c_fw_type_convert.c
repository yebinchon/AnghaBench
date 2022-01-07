
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct cgs_device {int dummy; } ;
typedef enum AMDGPU_UCODE_ID { ____Placeholder_AMDGPU_UCODE_ID } AMDGPU_UCODE_ID ;
struct TYPE_2__ {int asic_type; } ;


 int AMDGPU_UCODE_ID_CP_CE ;
 int AMDGPU_UCODE_ID_CP_ME ;
 int AMDGPU_UCODE_ID_CP_MEC1 ;
 int AMDGPU_UCODE_ID_CP_MEC2 ;
 int AMDGPU_UCODE_ID_CP_PFP ;
 int AMDGPU_UCODE_ID_MAXIMUM ;
 int AMDGPU_UCODE_ID_RLC_G ;
 int AMDGPU_UCODE_ID_SDMA0 ;
 int AMDGPU_UCODE_ID_SDMA1 ;
 int AMDGPU_UCODE_ID_STORAGE ;
 int CGS_FUNC_ADEV ;
 int CHIP_TOPAZ ;
 int DRM_ERROR (char*) ;
 TYPE_1__* adev ;

__attribute__((used)) static uint32_t fw_type_convert(struct cgs_device *cgs_device, uint32_t fw_type)
{
 CGS_FUNC_ADEV;
 enum AMDGPU_UCODE_ID result = AMDGPU_UCODE_ID_MAXIMUM;

 switch (fw_type) {
 case 130:
  result = AMDGPU_UCODE_ID_SDMA0;
  break;
 case 129:
  result = AMDGPU_UCODE_ID_SDMA1;
  break;
 case 137:
  result = AMDGPU_UCODE_ID_CP_CE;
  break;
 case 132:
  result = AMDGPU_UCODE_ID_CP_PFP;
  break;
 case 136:
  result = AMDGPU_UCODE_ID_CP_ME;
  break;
 case 135:
 case 134:
  result = AMDGPU_UCODE_ID_CP_MEC1;
  break;
 case 133:




  if (adev->asic_type >= CHIP_TOPAZ)
   result = AMDGPU_UCODE_ID_CP_MEC1;
  else
   result = AMDGPU_UCODE_ID_CP_MEC2;
  break;
 case 131:
  result = AMDGPU_UCODE_ID_RLC_G;
  break;
 case 128:
  result = AMDGPU_UCODE_ID_STORAGE;
  break;
 default:
  DRM_ERROR("Firmware type not supported\n");
 }
 return result;
}
