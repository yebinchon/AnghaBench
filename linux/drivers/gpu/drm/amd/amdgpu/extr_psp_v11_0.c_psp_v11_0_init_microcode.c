
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int ucode_version; int ucode_array_offset_bytes; } ;
struct ta_firmware_header_v1_0 {int ta_ras_offset_bytes; int ta_ras_size_bytes; int ta_ras_ucode_version; TYPE_1__ header; int ta_xgmi_size_bytes; int ta_xgmi_ucode_version; } ;
struct psp_firmware_header_v1_2 {int kdb_offset_bytes; int kdb_size_bytes; } ;
struct psp_firmware_header_v1_1 {int kdb_offset_bytes; int kdb_size_bytes; int toc_offset_bytes; int toc_size_bytes; } ;
struct TYPE_10__ {int header_version_major; int header_version_minor; int ucode_array_offset_bytes; int ucode_size_bytes; int ucode_version; } ;
struct psp_firmware_header_v1_0 {TYPE_6__ header; int ucode_feature_version; int sos_offset_bytes; int sos_size_bytes; } ;
struct psp_context {struct amdgpu_device* adev; } ;
struct TYPE_8__ {int sos_fw_version; int sos_feature_version; int sos_bin_size; int sys_bin_size; int toc_bin_size; int kdb_bin_size; int asd_fw_version; int asd_feature_version; int asd_ucode_size; int ta_xgmi_ucode_version; int ta_xgmi_ucode_size; int ta_fw_version; int ta_ras_ucode_version; int ta_ras_ucode_size; TYPE_3__* sos_fw; TYPE_3__* asd_fw; TYPE_3__* ta_fw; int * ta_xgmi_start_addr; int * ta_ras_start_addr; int * asd_start_addr; int * sys_start_addr; int * kdb_start_addr; int * toc_start_addr; int * sos_start_addr; } ;
struct amdgpu_device {int asic_type; TYPE_2__ psp; int dev; } ;
typedef int fw_name ;
struct TYPE_9__ {scalar_t__ data; } ;


 int BUG () ;





 int DRM_DEBUG (char*) ;
 int EINVAL ;
 int amdgpu_ucode_print_psp_hdr (TYPE_6__*) ;
 int amdgpu_ucode_validate (TYPE_3__*) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,char*) ;
 int le32_to_cpu (int ) ;
 int release_firmware (TYPE_3__*) ;
 int request_firmware (TYPE_3__**,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int psp_v11_0_init_microcode(struct psp_context *psp)
{
 struct amdgpu_device *adev = psp->adev;
 const char *chip_name;
 char fw_name[30];
 int err = 0;
 const struct psp_firmware_header_v1_0 *sos_hdr;
 const struct psp_firmware_header_v1_1 *sos_hdr_v1_1;
 const struct psp_firmware_header_v1_2 *sos_hdr_v1_2;
 const struct psp_firmware_header_v1_0 *asd_hdr;
 const struct ta_firmware_header_v1_0 *ta_hdr;

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 128:
  chip_name = "vega20";
  break;
 case 131:
  chip_name = "navi10";
  break;
 case 129:
  chip_name = "navi14";
  break;
 case 130:
  chip_name = "navi12";
  break;
 case 132:
  chip_name = "arcturus";
  break;
 default:
  BUG();
 }

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_sos.bin", chip_name);
 err = request_firmware(&adev->psp.sos_fw, fw_name, adev->dev);
 if (err)
  goto out;

 err = amdgpu_ucode_validate(adev->psp.sos_fw);
 if (err)
  goto out;

 sos_hdr = (const struct psp_firmware_header_v1_0 *)adev->psp.sos_fw->data;
 amdgpu_ucode_print_psp_hdr(&sos_hdr->header);

 switch (sos_hdr->header.header_version_major) {
 case 1:
  adev->psp.sos_fw_version = le32_to_cpu(sos_hdr->header.ucode_version);
  adev->psp.sos_feature_version = le32_to_cpu(sos_hdr->ucode_feature_version);
  adev->psp.sos_bin_size = le32_to_cpu(sos_hdr->sos_size_bytes);
  adev->psp.sys_bin_size = le32_to_cpu(sos_hdr->sos_offset_bytes);
  adev->psp.sys_start_addr = (uint8_t *)sos_hdr +
    le32_to_cpu(sos_hdr->header.ucode_array_offset_bytes);
  adev->psp.sos_start_addr = (uint8_t *)adev->psp.sys_start_addr +
    le32_to_cpu(sos_hdr->sos_offset_bytes);
  if (sos_hdr->header.header_version_minor == 1) {
   sos_hdr_v1_1 = (const struct psp_firmware_header_v1_1 *)adev->psp.sos_fw->data;
   adev->psp.toc_bin_size = le32_to_cpu(sos_hdr_v1_1->toc_size_bytes);
   adev->psp.toc_start_addr = (uint8_t *)adev->psp.sys_start_addr +
     le32_to_cpu(sos_hdr_v1_1->toc_offset_bytes);
   adev->psp.kdb_bin_size = le32_to_cpu(sos_hdr_v1_1->kdb_size_bytes);
   adev->psp.kdb_start_addr = (uint8_t *)adev->psp.sys_start_addr +
     le32_to_cpu(sos_hdr_v1_1->kdb_offset_bytes);
  }
  if (sos_hdr->header.header_version_minor == 2) {
   sos_hdr_v1_2 = (const struct psp_firmware_header_v1_2 *)adev->psp.sos_fw->data;
   adev->psp.kdb_bin_size = le32_to_cpu(sos_hdr_v1_2->kdb_size_bytes);
   adev->psp.kdb_start_addr = (uint8_t *)adev->psp.sys_start_addr +
          le32_to_cpu(sos_hdr_v1_2->kdb_offset_bytes);
  }
  break;
 default:
  dev_err(adev->dev,
   "Unsupported psp sos firmware\n");
  err = -EINVAL;
  goto out;
 }

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_asd.bin", chip_name);
 err = request_firmware(&adev->psp.asd_fw, fw_name, adev->dev);
 if (err)
  goto out1;

 err = amdgpu_ucode_validate(adev->psp.asd_fw);
 if (err)
  goto out1;

 asd_hdr = (const struct psp_firmware_header_v1_0 *)adev->psp.asd_fw->data;
 adev->psp.asd_fw_version = le32_to_cpu(asd_hdr->header.ucode_version);
 adev->psp.asd_feature_version = le32_to_cpu(asd_hdr->ucode_feature_version);
 adev->psp.asd_ucode_size = le32_to_cpu(asd_hdr->header.ucode_size_bytes);
 adev->psp.asd_start_addr = (uint8_t *)asd_hdr +
    le32_to_cpu(asd_hdr->header.ucode_array_offset_bytes);

 switch (adev->asic_type) {
 case 128:
  snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_ta.bin", chip_name);
  err = request_firmware(&adev->psp.ta_fw, fw_name, adev->dev);
  if (err) {
   release_firmware(adev->psp.ta_fw);
   adev->psp.ta_fw = ((void*)0);
   dev_info(adev->dev,
     "psp v11.0: Failed to load firmware \"%s\"\n", fw_name);
  } else {
   err = amdgpu_ucode_validate(adev->psp.ta_fw);
   if (err)
    goto out2;

   ta_hdr = (const struct ta_firmware_header_v1_0 *)adev->psp.ta_fw->data;
   adev->psp.ta_xgmi_ucode_version = le32_to_cpu(ta_hdr->ta_xgmi_ucode_version);
   adev->psp.ta_xgmi_ucode_size = le32_to_cpu(ta_hdr->ta_xgmi_size_bytes);
   adev->psp.ta_xgmi_start_addr = (uint8_t *)ta_hdr +
    le32_to_cpu(ta_hdr->header.ucode_array_offset_bytes);
   adev->psp.ta_fw_version = le32_to_cpu(ta_hdr->header.ucode_version);
   adev->psp.ta_ras_ucode_version = le32_to_cpu(ta_hdr->ta_ras_ucode_version);
   adev->psp.ta_ras_ucode_size = le32_to_cpu(ta_hdr->ta_ras_size_bytes);
   adev->psp.ta_ras_start_addr = (uint8_t *)adev->psp.ta_xgmi_start_addr +
    le32_to_cpu(ta_hdr->ta_ras_offset_bytes);
  }
  break;
 case 131:
 case 129:
 case 130:
 case 132:
  break;
 default:
  BUG();
 }

 return 0;

out2:
 release_firmware(adev->psp.ta_fw);
 adev->psp.ta_fw = ((void*)0);
out1:
 release_firmware(adev->psp.asd_fw);
 adev->psp.asd_fw = ((void*)0);
out:
 dev_err(adev->dev,
  "psp v11.0: Failed to load firmware \"%s\"\n", fw_name);
 release_firmware(adev->psp.sos_fw);
 adev->psp.sos_fw = ((void*)0);

 return err;
}
