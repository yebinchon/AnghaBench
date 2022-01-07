
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ucode_version; } ;
struct rlc_firmware_header_v1_0 {int ucode_feature_version; TYPE_2__ header; } ;
struct TYPE_7__ {int ucode_version; } ;
struct gfx_firmware_header_v1_0 {int ucode_feature_version; TYPE_1__ header; } ;
struct TYPE_9__ {TYPE_4__* rlc_fw; TYPE_4__* ce_fw; TYPE_4__* me_fw; TYPE_4__* pfp_fw; void* rlc_feature_version; void* rlc_fw_version; void* ce_feature_version; void* ce_fw_version; void* me_feature_version; void* me_fw_version; void* pfp_feature_version; void* pfp_fw_version; } ;
struct amdgpu_device {int asic_type; TYPE_3__ gfx; int dev; } ;
typedef int fw_name ;
struct TYPE_10__ {scalar_t__ data; } ;


 int BUG () ;





 int DRM_DEBUG (char*) ;
 int amdgpu_ucode_validate (TYPE_4__*) ;
 void* le32_to_cpu (int ) ;
 int pr_err (char*,char*) ;
 int release_firmware (TYPE_4__*) ;
 int request_firmware (TYPE_4__**,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int gfx_v6_0_init_microcode(struct amdgpu_device *adev)
{
 const char *chip_name;
 char fw_name[30];
 int err;
 const struct gfx_firmware_header_v1_0 *cp_hdr;
 const struct rlc_firmware_header_v1_0 *rlc_hdr;

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

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_pfp.bin", chip_name);
 err = request_firmware(&adev->gfx.pfp_fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gfx.pfp_fw);
 if (err)
  goto out;
 cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.pfp_fw->data;
 adev->gfx.pfp_fw_version = le32_to_cpu(cp_hdr->header.ucode_version);
 adev->gfx.pfp_feature_version = le32_to_cpu(cp_hdr->ucode_feature_version);

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_me.bin", chip_name);
 err = request_firmware(&adev->gfx.me_fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gfx.me_fw);
 if (err)
  goto out;
 cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.me_fw->data;
 adev->gfx.me_fw_version = le32_to_cpu(cp_hdr->header.ucode_version);
 adev->gfx.me_feature_version = le32_to_cpu(cp_hdr->ucode_feature_version);

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_ce.bin", chip_name);
 err = request_firmware(&adev->gfx.ce_fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gfx.ce_fw);
 if (err)
  goto out;
 cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.ce_fw->data;
 adev->gfx.ce_fw_version = le32_to_cpu(cp_hdr->header.ucode_version);
 adev->gfx.ce_feature_version = le32_to_cpu(cp_hdr->ucode_feature_version);

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_rlc.bin", chip_name);
 err = request_firmware(&adev->gfx.rlc_fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gfx.rlc_fw);
 rlc_hdr = (const struct rlc_firmware_header_v1_0 *)adev->gfx.rlc_fw->data;
 adev->gfx.rlc_fw_version = le32_to_cpu(rlc_hdr->header.ucode_version);
 adev->gfx.rlc_feature_version = le32_to_cpu(rlc_hdr->ucode_feature_version);

out:
 if (err) {
  pr_err("gfx6: Failed to load firmware \"%s\"\n", fw_name);
  release_firmware(adev->gfx.pfp_fw);
  adev->gfx.pfp_fw = ((void*)0);
  release_firmware(adev->gfx.me_fw);
  adev->gfx.me_fw = ((void*)0);
  release_firmware(adev->gfx.ce_fw);
  adev->gfx.ce_fw = ((void*)0);
  release_firmware(adev->gfx.rlc_fw);
  adev->gfx.rlc_fw = ((void*)0);
 }
 return err;
}
