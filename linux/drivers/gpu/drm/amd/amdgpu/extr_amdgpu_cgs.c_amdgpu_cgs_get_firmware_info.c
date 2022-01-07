
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef void* uint32_t ;
typedef void* uint16_t ;
struct TYPE_15__ {int ucode_array_offset_bytes; int ucode_size_bytes; int ucode_version; } ;
struct smc_firmware_header_v1_0 {TYPE_8__ header; int ucode_start_addr; } ;
struct TYPE_10__ {int ucode_version; int ucode_size_bytes; } ;
struct gfx_firmware_header_v1_0 {int ucode_feature_version; int jt_offset; TYPE_1__ header; int jt_size; } ;
struct common_firmware_header {int ucode_size_bytes; } ;
struct cgs_firmware_info {int image_size; int version; int is_kicker; void* kptr; void* ucode_start_address; void* feature_version; int fw_version; int mc_addr; } ;
struct cgs_device {int dummy; } ;
struct amdgpu_firmware_info {size_t ucode_id; TYPE_5__* fw; void* kaddr; int mc_addr; } ;
typedef enum cgs_ucode_id { ____Placeholder_cgs_ucode_id } cgs_ucode_id ;
typedef enum AMDGPU_UCODE_ID { ____Placeholder_AMDGPU_UCODE_ID } AMDGPU_UCODE_ID ;
struct TYPE_13__ {int fw_version; TYPE_5__* fw; } ;
struct TYPE_12__ {scalar_t__ load_type; int fw_size; struct amdgpu_firmware_info* ucode; } ;
struct TYPE_16__ {int asic_type; TYPE_4__ pm; TYPE_3__ firmware; int dev; TYPE_2__* pdev; } ;
struct TYPE_14__ {int data; } ;
struct TYPE_11__ {int revision; int device; } ;


 scalar_t__ ALIGN (int,int ) ;
 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 size_t AMDGPU_UCODE_ID_SMC ;
 int CGS_FUNC_ADEV ;
 int CGS_UCODE_ID_CP_MEC ;
 int CGS_UCODE_ID_CP_MEC_JT1 ;
 int CGS_UCODE_ID_CP_MEC_JT2 ;
 int CGS_UCODE_ID_SMU ;
 int CGS_UCODE_ID_SMU_SK ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int PAGE_SIZE ;
 TYPE_9__* adev ;
 int amdgpu_get_firmware_version (struct cgs_device*,int) ;
 int amdgpu_ucode_print_smc_hdr (TYPE_8__*) ;
 int amdgpu_ucode_validate (TYPE_5__*) ;
 int fw_type_convert (struct cgs_device*,int) ;
 int le32_to_cpu (int ) ;
 int release_firmware (TYPE_5__*) ;
 int request_firmware (TYPE_5__**,char*,int ) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int amdgpu_cgs_get_firmware_info(struct cgs_device *cgs_device,
     enum cgs_ucode_id type,
     struct cgs_firmware_info *info)
{
 CGS_FUNC_ADEV;

 if ((CGS_UCODE_ID_SMU != type) && (CGS_UCODE_ID_SMU_SK != type)) {
  uint64_t gpu_addr;
  uint32_t data_size;
  const struct gfx_firmware_header_v1_0 *header;
  enum AMDGPU_UCODE_ID id;
  struct amdgpu_firmware_info *ucode;

  id = fw_type_convert(cgs_device, type);
  ucode = &adev->firmware.ucode[id];
  if (ucode->fw == ((void*)0))
   return -EINVAL;

  gpu_addr = ucode->mc_addr;
  header = (const struct gfx_firmware_header_v1_0 *)ucode->fw->data;
  data_size = le32_to_cpu(header->header.ucode_size_bytes);

  if ((type == CGS_UCODE_ID_CP_MEC_JT1) ||
      (type == CGS_UCODE_ID_CP_MEC_JT2)) {
   gpu_addr += ALIGN(le32_to_cpu(header->header.ucode_size_bytes), PAGE_SIZE);
   data_size = le32_to_cpu(header->jt_size) << 2;
  }

  info->kptr = ucode->kaddr;
  info->image_size = data_size;
  info->mc_addr = gpu_addr;
  info->version = (uint16_t)le32_to_cpu(header->header.ucode_version);

  if (CGS_UCODE_ID_CP_MEC == type)
   info->image_size = le32_to_cpu(header->jt_offset) << 2;

  info->fw_version = amdgpu_get_firmware_version(cgs_device, type);
  info->feature_version = (uint16_t)le32_to_cpu(header->ucode_feature_version);
 } else {
  char fw_name[30] = {0};
  int err = 0;
  uint32_t ucode_size;
  uint32_t ucode_start_address;
  const uint8_t *src;
  const struct smc_firmware_header_v1_0 *hdr;
  const struct common_firmware_header *header;
  struct amdgpu_firmware_info *ucode = ((void*)0);

  if (!adev->pm.fw) {
   switch (adev->asic_type) {
   case 135:
    strcpy(fw_name, "radeon/tahiti_smc.bin");
    break;
   case 139:
    if ((adev->pdev->revision == 0x81) &&
        ((adev->pdev->device == 0x6810) ||
        (adev->pdev->device == 0x6811))) {
     info->is_kicker = 1;
     strcpy(fw_name, "radeon/pitcairn_k_smc.bin");
    } else {
     strcpy(fw_name, "radeon/pitcairn_smc.bin");
    }
    break;
   case 128:
    if (((adev->pdev->device == 0x6820) &&
     ((adev->pdev->revision == 0x81) ||
     (adev->pdev->revision == 0x83))) ||
        ((adev->pdev->device == 0x6821) &&
     ((adev->pdev->revision == 0x83) ||
     (adev->pdev->revision == 0x87))) ||
        ((adev->pdev->revision == 0x87) &&
     ((adev->pdev->device == 0x6823) ||
     (adev->pdev->device == 0x682b)))) {
     info->is_kicker = 1;
     strcpy(fw_name, "radeon/verde_k_smc.bin");
    } else {
     strcpy(fw_name, "radeon/verde_smc.bin");
    }
    break;
   case 140:
    if (((adev->pdev->revision == 0x81) &&
     ((adev->pdev->device == 0x6600) ||
     (adev->pdev->device == 0x6604) ||
     (adev->pdev->device == 0x6605) ||
     (adev->pdev->device == 0x6610))) ||
        ((adev->pdev->revision == 0x83) &&
     (adev->pdev->device == 0x6610))) {
     info->is_kicker = 1;
     strcpy(fw_name, "radeon/oland_k_smc.bin");
    } else {
     strcpy(fw_name, "radeon/oland_smc.bin");
    }
    break;
   case 142:
    if (((adev->pdev->revision == 0x81) &&
     (adev->pdev->device == 0x6660)) ||
        ((adev->pdev->revision == 0x83) &&
     ((adev->pdev->device == 0x6660) ||
     (adev->pdev->device == 0x6663) ||
     (adev->pdev->device == 0x6665) ||
      (adev->pdev->device == 0x6667)))) {
     info->is_kicker = 1;
     strcpy(fw_name, "radeon/hainan_k_smc.bin");
    } else if ((adev->pdev->revision == 0xc3) &&
      (adev->pdev->device == 0x6665)) {
     info->is_kicker = 1;
     strcpy(fw_name, "radeon/banks_k_2_smc.bin");
    } else {
     strcpy(fw_name, "radeon/hainan_smc.bin");
    }
    break;
   case 144:
    if ((adev->pdev->revision == 0x80) ||
     (adev->pdev->revision == 0x81) ||
     (adev->pdev->device == 0x665f)) {
     info->is_kicker = 1;
     strcpy(fw_name, "amdgpu/bonaire_k_smc.bin");
    } else {
     strcpy(fw_name, "amdgpu/bonaire_smc.bin");
    }
    break;
   case 141:
    if (adev->pdev->revision == 0x80) {
     info->is_kicker = 1;
     strcpy(fw_name, "amdgpu/hawaii_k_smc.bin");
    } else {
     strcpy(fw_name, "amdgpu/hawaii_smc.bin");
    }
    break;
   case 133:
    if (((adev->pdev->device == 0x6900) && (adev->pdev->revision == 0x81)) ||
        ((adev->pdev->device == 0x6900) && (adev->pdev->revision == 0x83)) ||
        ((adev->pdev->device == 0x6907) && (adev->pdev->revision == 0x87)) ||
        ((adev->pdev->device == 0x6900) && (adev->pdev->revision == 0xD1)) ||
        ((adev->pdev->device == 0x6900) && (adev->pdev->revision == 0xD3))) {
     info->is_kicker = 1;
     strcpy(fw_name, "amdgpu/topaz_k_smc.bin");
    } else
     strcpy(fw_name, "amdgpu/topaz_smc.bin");
    break;
   case 134:
    if (((adev->pdev->device == 0x6939) && (adev->pdev->revision == 0xf1)) ||
        ((adev->pdev->device == 0x6938) && (adev->pdev->revision == 0xf1))) {
     info->is_kicker = 1;
     strcpy(fw_name, "amdgpu/tonga_k_smc.bin");
    } else
     strcpy(fw_name, "amdgpu/tonga_smc.bin");
    break;
   case 143:
    strcpy(fw_name, "amdgpu/fiji_smc.bin");
    break;
   case 137:
    if (type == CGS_UCODE_ID_SMU) {
     if (((adev->pdev->device == 0x67ef) &&
          ((adev->pdev->revision == 0xe0) ||
           (adev->pdev->revision == 0xe5))) ||
         ((adev->pdev->device == 0x67ff) &&
          ((adev->pdev->revision == 0xcf) ||
           (adev->pdev->revision == 0xef) ||
           (adev->pdev->revision == 0xff)))) {
      info->is_kicker = 1;
      strcpy(fw_name, "amdgpu/polaris11_k_smc.bin");
     } else if ((adev->pdev->device == 0x67ef) &&
         (adev->pdev->revision == 0xe2)) {
      info->is_kicker = 1;
      strcpy(fw_name, "amdgpu/polaris11_k2_smc.bin");
     } else {
      strcpy(fw_name, "amdgpu/polaris11_smc.bin");
     }
    } else if (type == CGS_UCODE_ID_SMU_SK) {
     strcpy(fw_name, "amdgpu/polaris11_smc_sk.bin");
    }
    break;
   case 138:
    if (type == CGS_UCODE_ID_SMU) {
     if (((adev->pdev->device == 0x67df) &&
          ((adev->pdev->revision == 0xe0) ||
           (adev->pdev->revision == 0xe3) ||
           (adev->pdev->revision == 0xe4) ||
           (adev->pdev->revision == 0xe5) ||
           (adev->pdev->revision == 0xe7) ||
           (adev->pdev->revision == 0xef))) ||
         ((adev->pdev->device == 0x6fdf) &&
          ((adev->pdev->revision == 0xef) ||
           (adev->pdev->revision == 0xff)))) {
      info->is_kicker = 1;
      strcpy(fw_name, "amdgpu/polaris10_k_smc.bin");
     } else if ((adev->pdev->device == 0x67df) &&
         ((adev->pdev->revision == 0xe1) ||
          (adev->pdev->revision == 0xf7))) {
      info->is_kicker = 1;
      strcpy(fw_name, "amdgpu/polaris10_k2_smc.bin");
     } else {
      strcpy(fw_name, "amdgpu/polaris10_smc.bin");
     }
    } else if (type == CGS_UCODE_ID_SMU_SK) {
     strcpy(fw_name, "amdgpu/polaris10_smc_sk.bin");
    }
    break;
   case 136:
    if (((adev->pdev->device == 0x6987) &&
         ((adev->pdev->revision == 0xc0) ||
          (adev->pdev->revision == 0xc3))) ||
        ((adev->pdev->device == 0x6981) &&
         ((adev->pdev->revision == 0x00) ||
          (adev->pdev->revision == 0x01) ||
          (adev->pdev->revision == 0x10)))) {
     info->is_kicker = 1;
     strcpy(fw_name, "amdgpu/polaris12_k_smc.bin");
    } else {
     strcpy(fw_name, "amdgpu/polaris12_smc.bin");
    }
    break;
   case 129:
    strcpy(fw_name, "amdgpu/vegam_smc.bin");
    break;
   case 132:
    if ((adev->pdev->device == 0x687f) &&
     ((adev->pdev->revision == 0xc0) ||
     (adev->pdev->revision == 0xc1) ||
     (adev->pdev->revision == 0xc3)))
     strcpy(fw_name, "amdgpu/vega10_acg_smc.bin");
    else
     strcpy(fw_name, "amdgpu/vega10_smc.bin");
    break;
   case 131:
    strcpy(fw_name, "amdgpu/vega12_smc.bin");
    break;
   case 130:
    strcpy(fw_name, "amdgpu/vega20_smc.bin");
    break;
   default:
    DRM_ERROR("SMC firmware not supported\n");
    return -EINVAL;
   }

   err = request_firmware(&adev->pm.fw, fw_name, adev->dev);
   if (err) {
    DRM_ERROR("Failed to request firmware\n");
    return err;
   }

   err = amdgpu_ucode_validate(adev->pm.fw);
   if (err) {
    DRM_ERROR("Failed to load firmware \"%s\"", fw_name);
    release_firmware(adev->pm.fw);
    adev->pm.fw = ((void*)0);
    return err;
   }

   if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
    ucode = &adev->firmware.ucode[AMDGPU_UCODE_ID_SMC];
    ucode->ucode_id = AMDGPU_UCODE_ID_SMC;
    ucode->fw = adev->pm.fw;
    header = (const struct common_firmware_header *)ucode->fw->data;
    adev->firmware.fw_size +=
     ALIGN(le32_to_cpu(header->ucode_size_bytes), PAGE_SIZE);
   }
  }

  hdr = (const struct smc_firmware_header_v1_0 *) adev->pm.fw->data;
  amdgpu_ucode_print_smc_hdr(&hdr->header);
  adev->pm.fw_version = le32_to_cpu(hdr->header.ucode_version);
  ucode_size = le32_to_cpu(hdr->header.ucode_size_bytes);
  ucode_start_address = le32_to_cpu(hdr->ucode_start_addr);
  src = (const uint8_t *)(adev->pm.fw->data +
         le32_to_cpu(hdr->header.ucode_array_offset_bytes));

  info->version = adev->pm.fw_version;
  info->image_size = ucode_size;
  info->ucode_start_address = ucode_start_address;
  info->kptr = (void *)src;
 }
 return 0;
}
