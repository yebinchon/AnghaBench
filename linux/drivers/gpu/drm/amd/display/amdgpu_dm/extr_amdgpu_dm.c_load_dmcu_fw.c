
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int ucode_version; int ucode_size_bytes; } ;
struct dmcu_firmware_header_v1_0 {TYPE_4__ header; int intv_size_bytes; } ;
struct TYPE_10__ {scalar_t__ dmcu_fw_version; TYPE_5__* fw_dmcu; } ;
struct TYPE_9__ {scalar_t__ load_type; int fw_size; TYPE_1__* ucode; } ;
struct amdgpu_device {int asic_type; TYPE_3__ dm; TYPE_2__ firmware; int dev; int external_rev_id; } ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_8__ {size_t ucode_id; TYPE_5__* fw; } ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 size_t AMDGPU_UCODE_ID_DMCU_ERAM ;
 size_t AMDGPU_UCODE_ID_DMCU_INTV ;
 int ASICREV_IS_PICASSO (int ) ;
 int ASICREV_IS_RAVEN2 (int ) ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int ENOENT ;
 char* FIRMWARE_RAVEN_DMCU ;
 int PAGE_SIZE ;
 int amdgpu_ucode_validate (TYPE_5__*) ;
 int dev_err (int ,char*,char const*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int release_firmware (TYPE_5__*) ;
 int request_firmware_direct (TYPE_5__**,char const*,int ) ;

__attribute__((used)) static int load_dmcu_fw(struct amdgpu_device *adev)
{
 const char *fw_name_dmcu = ((void*)0);
 int r;
 const struct dmcu_firmware_header_v1_0 *hdr;

 switch(adev->asic_type) {
 case 148:
 case 145:
 case 143:
 case 144:
 case 142:
 case 132:
 case 146:
 case 147:
 case 133:
 case 137:
 case 138:
 case 136:
 case 128:
 case 131:
 case 130:
 case 129:
 case 141:
 case 139:
 case 140:
 case 134:
  return 0;
 case 135:
  if (ASICREV_IS_PICASSO(adev->external_rev_id))
   fw_name_dmcu = FIRMWARE_RAVEN_DMCU;
  else if (ASICREV_IS_RAVEN2(adev->external_rev_id))
   fw_name_dmcu = FIRMWARE_RAVEN_DMCU;
  else
   return 0;
  break;
 default:
  DRM_ERROR("Unsupported ASIC type: 0x%X\n", adev->asic_type);
  return -EINVAL;
 }

 if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP) {
  DRM_DEBUG_KMS("dm: DMCU firmware not supported on direct or SMU loading\n");
  return 0;
 }

 r = request_firmware_direct(&adev->dm.fw_dmcu, fw_name_dmcu, adev->dev);
 if (r == -ENOENT) {

  DRM_DEBUG_KMS("dm: DMCU firmware not found\n");
  adev->dm.fw_dmcu = ((void*)0);
  return 0;
 }
 if (r) {
  dev_err(adev->dev, "amdgpu_dm: Can't load firmware \"%s\"\n",
   fw_name_dmcu);
  return r;
 }

 r = amdgpu_ucode_validate(adev->dm.fw_dmcu);
 if (r) {
  dev_err(adev->dev, "amdgpu_dm: Can't validate firmware \"%s\"\n",
   fw_name_dmcu);
  release_firmware(adev->dm.fw_dmcu);
  adev->dm.fw_dmcu = ((void*)0);
  return r;
 }

 hdr = (const struct dmcu_firmware_header_v1_0 *)adev->dm.fw_dmcu->data;
 adev->firmware.ucode[AMDGPU_UCODE_ID_DMCU_ERAM].ucode_id = AMDGPU_UCODE_ID_DMCU_ERAM;
 adev->firmware.ucode[AMDGPU_UCODE_ID_DMCU_ERAM].fw = adev->dm.fw_dmcu;
 adev->firmware.fw_size +=
  ALIGN(le32_to_cpu(hdr->header.ucode_size_bytes) - le32_to_cpu(hdr->intv_size_bytes), PAGE_SIZE);

 adev->firmware.ucode[AMDGPU_UCODE_ID_DMCU_INTV].ucode_id = AMDGPU_UCODE_ID_DMCU_INTV;
 adev->firmware.ucode[AMDGPU_UCODE_ID_DMCU_INTV].fw = adev->dm.fw_dmcu;
 adev->firmware.fw_size +=
  ALIGN(le32_to_cpu(hdr->intv_size_bytes), PAGE_SIZE);

 adev->dm.dmcu_fw_version = le32_to_cpu(hdr->header.ucode_version);

 DRM_DEBUG_KMS("PSP loading DMCU firmware\n");

 return 0;
}
