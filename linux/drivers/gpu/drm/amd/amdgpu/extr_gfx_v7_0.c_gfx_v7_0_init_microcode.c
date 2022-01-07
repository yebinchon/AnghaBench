
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rlc_fw; int * mec2_fw; int * mec_fw; int * ce_fw; int * me_fw; int * pfp_fw; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gfx; int dev; } ;
typedef int fw_name ;


 int BUG () ;





 int DRM_DEBUG (char*) ;
 int amdgpu_ucode_validate (int *) ;
 int pr_err (char*,char*) ;
 int release_firmware (int *) ;
 int request_firmware (int **,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int gfx_v7_0_init_microcode(struct amdgpu_device *adev)
{
 const char *chip_name;
 char fw_name[30];
 int err;

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 132:
  chip_name = "bonaire";
  break;
 case 131:
  chip_name = "hawaii";
  break;
 case 129:
  chip_name = "kaveri";
  break;
 case 130:
  chip_name = "kabini";
  break;
 case 128:
  chip_name = "mullins";
  break;
 default: BUG();
 }

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_pfp.bin", chip_name);
 err = request_firmware(&adev->gfx.pfp_fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gfx.pfp_fw);
 if (err)
  goto out;

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_me.bin", chip_name);
 err = request_firmware(&adev->gfx.me_fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gfx.me_fw);
 if (err)
  goto out;

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_ce.bin", chip_name);
 err = request_firmware(&adev->gfx.ce_fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gfx.ce_fw);
 if (err)
  goto out;

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_mec.bin", chip_name);
 err = request_firmware(&adev->gfx.mec_fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gfx.mec_fw);
 if (err)
  goto out;

 if (adev->asic_type == 129) {
  snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_mec2.bin", chip_name);
  err = request_firmware(&adev->gfx.mec2_fw, fw_name, adev->dev);
  if (err)
   goto out;
  err = amdgpu_ucode_validate(adev->gfx.mec2_fw);
  if (err)
   goto out;
 }

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_rlc.bin", chip_name);
 err = request_firmware(&adev->gfx.rlc_fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gfx.rlc_fw);

out:
 if (err) {
  pr_err("gfx7: Failed to load firmware \"%s\"\n", fw_name);
  release_firmware(adev->gfx.pfp_fw);
  adev->gfx.pfp_fw = ((void*)0);
  release_firmware(adev->gfx.me_fw);
  adev->gfx.me_fw = ((void*)0);
  release_firmware(adev->gfx.ce_fw);
  adev->gfx.ce_fw = ((void*)0);
  release_firmware(adev->gfx.mec_fw);
  adev->gfx.mec_fw = ((void*)0);
  release_firmware(adev->gfx.mec2_fw);
  adev->gfx.mec2_fw = ((void*)0);
  release_firmware(adev->gfx.rlc_fw);
  adev->gfx.rlc_fw = ((void*)0);
 }
 return err;
}
