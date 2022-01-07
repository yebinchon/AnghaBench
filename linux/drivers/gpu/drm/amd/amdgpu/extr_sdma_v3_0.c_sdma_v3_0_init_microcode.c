
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ucode_version; } ;
struct sdma_firmware_header_v1_0 {int ucode_feature_version; TYPE_1__ header; } ;
struct common_firmware_header {int ucode_size_bytes; } ;
struct amdgpu_firmware_info {int ucode_id; TYPE_5__* fw; } ;
struct TYPE_11__ {int num_instances; TYPE_3__* instance; } ;
struct TYPE_9__ {int fw_size; struct amdgpu_firmware_info* ucode; } ;
struct amdgpu_device {int asic_type; TYPE_4__ sdma; TYPE_2__ firmware; int dev; } ;
typedef int fw_name ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_10__ {int feature_version; int burst_nop; TYPE_5__* fw; void* fw_version; } ;


 scalar_t__ ALIGN (void*,int ) ;
 int AMDGPU_UCODE_ID_SDMA0 ;
 int BUG () ;
 int DRM_DEBUG (char*) ;
 int PAGE_SIZE ;
 int amdgpu_ucode_validate (TYPE_5__*) ;
 void* le32_to_cpu (int ) ;
 int pr_err (char*,char*) ;
 int release_firmware (TYPE_5__*) ;
 int request_firmware (TYPE_5__**,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int sdma_v3_0_init_microcode(struct amdgpu_device *adev)
{
 const char *chip_name;
 char fw_name[30];
 int err = 0, i;
 struct amdgpu_firmware_info *info = ((void*)0);
 const struct common_firmware_header *header = ((void*)0);
 const struct sdma_firmware_header_v1_0 *hdr;

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 129:
  chip_name = "tonga";
  break;
 case 134:
  chip_name = "fiji";
  break;
 case 133:
  chip_name = "polaris10";
  break;
 case 132:
  chip_name = "polaris11";
  break;
 case 131:
  chip_name = "polaris12";
  break;
 case 128:
  chip_name = "vegam";
  break;
 case 135:
  chip_name = "carrizo";
  break;
 case 130:
  chip_name = "stoney";
  break;
 default: BUG();
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  if (i == 0)
   snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_sdma.bin", chip_name);
  else
   snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_sdma1.bin", chip_name);
  err = request_firmware(&adev->sdma.instance[i].fw, fw_name, adev->dev);
  if (err)
   goto out;
  err = amdgpu_ucode_validate(adev->sdma.instance[i].fw);
  if (err)
   goto out;
  hdr = (const struct sdma_firmware_header_v1_0 *)adev->sdma.instance[i].fw->data;
  adev->sdma.instance[i].fw_version = le32_to_cpu(hdr->header.ucode_version);
  adev->sdma.instance[i].feature_version = le32_to_cpu(hdr->ucode_feature_version);
  if (adev->sdma.instance[i].feature_version >= 20)
   adev->sdma.instance[i].burst_nop = 1;

  info = &adev->firmware.ucode[AMDGPU_UCODE_ID_SDMA0 + i];
  info->ucode_id = AMDGPU_UCODE_ID_SDMA0 + i;
  info->fw = adev->sdma.instance[i].fw;
  header = (const struct common_firmware_header *)info->fw->data;
  adev->firmware.fw_size +=
   ALIGN(le32_to_cpu(header->ucode_size_bytes), PAGE_SIZE);

 }
out:
 if (err) {
  pr_err("sdma_v3_0: Failed to load firmware \"%s\"\n", fw_name);
  for (i = 0; i < adev->sdma.num_instances; i++) {
   release_firmware(adev->sdma.instance[i].fw);
   adev->sdma.instance[i].fw = ((void*)0);
  }
 }
 return err;
}
