
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ucode_version; } ;
struct gfx_firmware_header_v1_0 {int jt_size; int ucode_feature_version; TYPE_1__ header; } ;
struct common_firmware_header {int ucode_size_bytes; } ;
struct amdgpu_firmware_info {size_t ucode_id; TYPE_4__* fw; } ;
struct TYPE_9__ {int mec_fw_version; int mec_feature_version; int mec2_fw_version; int mec2_feature_version; TYPE_4__* mec2_fw; TYPE_4__* mec_fw; } ;
struct TYPE_8__ {scalar_t__ load_type; int fw_size; struct amdgpu_firmware_info* ucode; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ gfx; int dev; TYPE_2__ firmware; } ;
typedef int fw_name ;
struct TYPE_10__ {scalar_t__ data; } ;


 scalar_t__ ALIGN (int,int ) ;
 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 size_t AMDGPU_UCODE_ID_CP_MEC1 ;
 size_t AMDGPU_UCODE_ID_CP_MEC1_JT ;
 size_t AMDGPU_UCODE_ID_CP_MEC2 ;
 size_t AMDGPU_UCODE_ID_CP_MEC2_JT ;
 scalar_t__ CHIP_ARCTURUS ;
 int PAGE_SIZE ;
 int amdgpu_ucode_validate (TYPE_4__*) ;
 int dev_err (int ,char*,char*) ;
 int gfx_v9_0_check_fw_write_wait (struct amdgpu_device*) ;
 int gfx_v9_0_check_if_need_gfxoff (struct amdgpu_device*) ;
 int le32_to_cpu (int ) ;
 int release_firmware (TYPE_4__*) ;
 int request_firmware (TYPE_4__**,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int gfx_v9_0_init_cp_compute_microcode(struct amdgpu_device *adev,
       const char *chip_name)
{
 char fw_name[30];
 int err;
 struct amdgpu_firmware_info *info = ((void*)0);
 const struct common_firmware_header *header = ((void*)0);
 const struct gfx_firmware_header_v1_0 *cp_hdr;

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_mec.bin", chip_name);
 err = request_firmware(&adev->gfx.mec_fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->gfx.mec_fw);
 if (err)
  goto out;
 cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec_fw->data;
 adev->gfx.mec_fw_version = le32_to_cpu(cp_hdr->header.ucode_version);
 adev->gfx.mec_feature_version = le32_to_cpu(cp_hdr->ucode_feature_version);


 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_mec2.bin", chip_name);
 err = request_firmware(&adev->gfx.mec2_fw, fw_name, adev->dev);
 if (!err) {
  err = amdgpu_ucode_validate(adev->gfx.mec2_fw);
  if (err)
   goto out;
  cp_hdr = (const struct gfx_firmware_header_v1_0 *)
  adev->gfx.mec2_fw->data;
  adev->gfx.mec2_fw_version =
  le32_to_cpu(cp_hdr->header.ucode_version);
  adev->gfx.mec2_feature_version =
  le32_to_cpu(cp_hdr->ucode_feature_version);
 } else {
  err = 0;
  adev->gfx.mec2_fw = ((void*)0);
 }

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
  info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_MEC1];
  info->ucode_id = AMDGPU_UCODE_ID_CP_MEC1;
  info->fw = adev->gfx.mec_fw;
  header = (const struct common_firmware_header *)info->fw->data;
  cp_hdr = (const struct gfx_firmware_header_v1_0 *)info->fw->data;
  adev->firmware.fw_size +=
   ALIGN(le32_to_cpu(header->ucode_size_bytes) - le32_to_cpu(cp_hdr->jt_size) * 4, PAGE_SIZE);

  info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_MEC1_JT];
  info->ucode_id = AMDGPU_UCODE_ID_CP_MEC1_JT;
  info->fw = adev->gfx.mec_fw;
  adev->firmware.fw_size +=
   ALIGN(le32_to_cpu(cp_hdr->jt_size) * 4, PAGE_SIZE);

  if (adev->gfx.mec2_fw) {
   info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_MEC2];
   info->ucode_id = AMDGPU_UCODE_ID_CP_MEC2;
   info->fw = adev->gfx.mec2_fw;
   header = (const struct common_firmware_header *)info->fw->data;
   cp_hdr = (const struct gfx_firmware_header_v1_0 *)info->fw->data;
   adev->firmware.fw_size +=
    ALIGN(le32_to_cpu(header->ucode_size_bytes) - le32_to_cpu(cp_hdr->jt_size) * 4, PAGE_SIZE);



   if (adev->asic_type != CHIP_ARCTURUS) {
    info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_MEC2_JT];
    info->ucode_id = AMDGPU_UCODE_ID_CP_MEC2_JT;
    info->fw = adev->gfx.mec2_fw;
    adev->firmware.fw_size +=
     ALIGN(le32_to_cpu(cp_hdr->jt_size) * 4,
     PAGE_SIZE);
   }
  }
 }

out:
 gfx_v9_0_check_if_need_gfxoff(adev);
 gfx_v9_0_check_fw_write_wait(adev);
 if (err) {
  dev_err(adev->dev,
   "gfx9: Failed to load firmware \"%s\"\n",
   fw_name);
  release_firmware(adev->gfx.mec_fw);
  adev->gfx.mec_fw = ((void*)0);
  release_firmware(adev->gfx.mec2_fw);
  adev->gfx.mec2_fw = ((void*)0);
 }
 return err;
}
