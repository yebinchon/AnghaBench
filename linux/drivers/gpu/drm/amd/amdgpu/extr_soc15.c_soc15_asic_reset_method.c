
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ras {int supported; } ;
struct amdgpu_hive_info {int dummy; } ;
struct TYPE_2__ {int sos_fw_version; } ;
struct amdgpu_device {int asic_type; TYPE_1__ psp; } ;
typedef enum amd_reset_method { ____Placeholder_amd_reset_method } amd_reset_method ;


 int AMD_RESET_METHOD_BACO ;
 int AMD_RESET_METHOD_MODE1 ;
 int AMD_RESET_METHOD_MODE2 ;




 struct amdgpu_hive_info* amdgpu_get_xgmi_hive (struct amdgpu_device*,int ) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int soc15_asic_get_baco_capability (struct amdgpu_device*,int*) ;

__attribute__((used)) static enum amd_reset_method
soc15_asic_reset_method(struct amdgpu_device *adev)
{
 bool baco_reset;

 switch (adev->asic_type) {
 case 131:
  return AMD_RESET_METHOD_MODE2;
 case 130:
 case 129:
  soc15_asic_get_baco_capability(adev, &baco_reset);
  break;
 case 128:
  if (adev->psp.sos_fw_version >= 0x80067)
   soc15_asic_get_baco_capability(adev, &baco_reset);
  else
   baco_reset = 0;
  if (baco_reset) {
   struct amdgpu_hive_info *hive = amdgpu_get_xgmi_hive(adev, 0);
   struct amdgpu_ras *ras = amdgpu_ras_get_context(adev);

   if (hive || (ras && ras->supported))
    baco_reset = 0;
  }
  break;
 default:
  baco_reset = 0;
  break;
 }

 if (baco_reset)
  return AMD_RESET_METHOD_BACO;
 else
  return AMD_RESET_METHOD_MODE1;
}
