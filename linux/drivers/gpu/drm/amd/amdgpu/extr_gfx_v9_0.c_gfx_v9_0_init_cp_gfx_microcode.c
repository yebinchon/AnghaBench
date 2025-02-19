
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ucode_version; } ;
struct gfx_firmware_header_v1_0 {int ucode_feature_version; TYPE_1__ header; } ;
struct common_firmware_header {int ucode_size_bytes; } ;
struct amdgpu_firmware_info {size_t ucode_id; TYPE_4__* fw; } ;
struct TYPE_9__ {TYPE_4__* ce_fw; TYPE_4__* me_fw; TYPE_4__* pfp_fw; void* ce_feature_version; void* ce_fw_version; void* me_feature_version; void* me_fw_version; void* pfp_feature_version; void* pfp_fw_version; } ;
struct TYPE_8__ {scalar_t__ load_type; int fw_size; struct amdgpu_firmware_info* ucode; } ;
struct amdgpu_device {TYPE_3__ gfx; int dev; TYPE_2__ firmware; } ;
typedef int fw_name ;
struct TYPE_10__ {scalar_t__ data; } ;


 scalar_t__ ALIGN (void*,int ) ;
 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 size_t AMDGPU_UCODE_ID_CP_CE ;
 size_t AMDGPU_UCODE_ID_CP_ME ;
 size_t AMDGPU_UCODE_ID_CP_PFP ;
 int PAGE_SIZE ;
 int amdgpu_ucode_validate (TYPE_4__*) ;
 int dev_err (int ,char*,char*) ;
 void* le32_to_cpu (int ) ;
 int release_firmware (TYPE_4__*) ;
 int request_firmware (TYPE_4__**,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int gfx_v9_0_init_cp_gfx_microcode(struct amdgpu_device *adev,
       const char *chip_name)
{
 char fw_name[30];
 int err;
 struct amdgpu_firmware_info *info = ((void*)0);
 const struct common_firmware_header *header = ((void*)0);
 const struct gfx_firmware_header_v1_0 *cp_hdr;

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

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
  info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_PFP];
  info->ucode_id = AMDGPU_UCODE_ID_CP_PFP;
  info->fw = adev->gfx.pfp_fw;
  header = (const struct common_firmware_header *)info->fw->data;
  adev->firmware.fw_size +=
   ALIGN(le32_to_cpu(header->ucode_size_bytes), PAGE_SIZE);

  info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_ME];
  info->ucode_id = AMDGPU_UCODE_ID_CP_ME;
  info->fw = adev->gfx.me_fw;
  header = (const struct common_firmware_header *)info->fw->data;
  adev->firmware.fw_size +=
   ALIGN(le32_to_cpu(header->ucode_size_bytes), PAGE_SIZE);

  info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_CE];
  info->ucode_id = AMDGPU_UCODE_ID_CP_CE;
  info->fw = adev->gfx.ce_fw;
  header = (const struct common_firmware_header *)info->fw->data;
  adev->firmware.fw_size +=
   ALIGN(le32_to_cpu(header->ucode_size_bytes), PAGE_SIZE);
 }

out:
 if (err) {
  dev_err(adev->dev,
   "gfx9: Failed to load firmware \"%s\"\n",
   fw_name);
  release_firmware(adev->gfx.pfp_fw);
  adev->gfx.pfp_fw = ((void*)0);
  release_firmware(adev->gfx.me_fw);
  adev->gfx.me_fw = ((void*)0);
  release_firmware(adev->gfx.ce_fw);
  adev->gfx.ce_fw = ((void*)0);
 }
 return err;
}
