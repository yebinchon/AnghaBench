
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fw; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gmc; int dev; } ;
typedef int fw_name ;


 int BUG () ;





 int DRM_DEBUG (char*) ;
 int RREG32 (int ) ;
 int amdgpu_ucode_validate (int *) ;
 int dev_err (int ,char*,char*) ;
 int mmMC_SEQ_MISC0 ;
 int release_firmware (int *) ;
 int request_firmware (int **,char*,int ) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int gmc_v6_0_init_microcode(struct amdgpu_device *adev)
{
 const char *chip_name;
 char fw_name[30];
 int err;
 bool is_58_fw = 0;

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 129:
  chip_name = "tahiti";
  break;
 case 130:
  chip_name = "pitcairn";
  break;
 case 128:
  chip_name = "verde";
  break;
 case 131:
  chip_name = "oland";
  break;
 case 132:
  chip_name = "hainan";
  break;
 default: BUG();
 }


 if (((RREG32(mmMC_SEQ_MISC0) & 0xff000000) >> 24) == 0x58)
  is_58_fw = 1;

 if (is_58_fw)
  snprintf(fw_name, sizeof(fw_name), "amdgpu/si58_mc.bin");
 else
  snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_mc.bin", chip_name);
 err = request_firmware(&adev->gmc.fw, fw_name, adev->dev);
 if (err)
  goto out;

 err = amdgpu_ucode_validate(adev->gmc.fw);

out:
 if (err) {
  dev_err(adev->dev,
         "si_mc: Failed to load firmware \"%s\"\n",
         fw_name);
  release_firmware(adev->gmc.fw);
  adev->gmc.fw = ((void*)0);
 }
 return err;
}
