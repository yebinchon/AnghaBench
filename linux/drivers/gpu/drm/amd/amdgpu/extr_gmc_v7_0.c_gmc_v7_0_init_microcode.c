
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
 int amdgpu_ucode_validate (int *) ;
 int pr_err (char*,char*) ;
 int release_firmware (int *) ;
 int request_firmware (int **,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int gmc_v7_0_init_microcode(struct amdgpu_device *adev)
{
 const char *chip_name;
 char fw_name[30];
 int err;

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 133:
  chip_name = "bonaire";
  break;
 case 132:
  chip_name = "hawaii";
  break;
 case 128:
  chip_name = "topaz";
  break;
 case 130:
 case 131:
 case 129:
  return 0;
 default: BUG();
 }

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_mc.bin", chip_name);

 err = request_firmware(&adev->gmc.fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gmc.fw);

out:
 if (err) {
  pr_err("cik_mc: Failed to load firmware \"%s\"\n", fw_name);
  release_firmware(adev->gmc.fw);
  adev->gmc.fw = ((void*)0);
 }
 return err;
}
