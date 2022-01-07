
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * fw; } ;
struct amdgpu_device {int asic_type; TYPE_2__ gmc; int dev; TYPE_1__* pdev; } ;
typedef int fw_name ;
struct TYPE_3__ {int device; int revision; } ;


 int BUG () ;
 int DRM_DEBUG (char*) ;
 int amdgpu_ucode_validate (int *) ;
 int pr_err (char*,char*) ;
 int release_firmware (int *) ;
 int request_firmware (int **,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int gmc_v8_0_init_microcode(struct amdgpu_device *adev)
{
 const char *chip_name;
 char fw_name[30];
 int err;

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 129:
  chip_name = "tonga";
  break;
 case 132:
  if (((adev->pdev->device == 0x67ef) &&
       ((adev->pdev->revision == 0xe0) ||
        (adev->pdev->revision == 0xe5))) ||
      ((adev->pdev->device == 0x67ff) &&
       ((adev->pdev->revision == 0xcf) ||
        (adev->pdev->revision == 0xef) ||
        (adev->pdev->revision == 0xff))))
   chip_name = "polaris11_k";
  else if ((adev->pdev->device == 0x67ef) &&
    (adev->pdev->revision == 0xe2))
   chip_name = "polaris11_k";
  else
   chip_name = "polaris11";
  break;
 case 133:
  if ((adev->pdev->device == 0x67df) &&
      ((adev->pdev->revision == 0xe1) ||
       (adev->pdev->revision == 0xf7)))
   chip_name = "polaris10_k";
  else
   chip_name = "polaris10";
  break;
 case 131:
  if (((adev->pdev->device == 0x6987) &&
       ((adev->pdev->revision == 0xc0) ||
        (adev->pdev->revision == 0xc3))) ||
      ((adev->pdev->device == 0x6981) &&
       ((adev->pdev->revision == 0x00) ||
        (adev->pdev->revision == 0x01) ||
        (adev->pdev->revision == 0x10))))
   chip_name = "polaris12_k";
  else
   chip_name = "polaris12";
  break;
 case 134:
 case 135:
 case 130:
 case 128:
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
  pr_err("mc: Failed to load firmware \"%s\"\n", fw_name);
  release_firmware(adev->gmc.fw);
  adev->gmc.fw = ((void*)0);
 }
 return err;
}
