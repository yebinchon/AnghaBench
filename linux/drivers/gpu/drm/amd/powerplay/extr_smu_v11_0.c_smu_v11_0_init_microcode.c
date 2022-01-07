
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct smu_context {struct amdgpu_device* adev; } ;
struct TYPE_10__ {int ucode_version; } ;
struct smc_firmware_header_v1_0 {TYPE_6__ header; } ;
struct common_firmware_header {int ucode_size_bytes; } ;
struct amdgpu_firmware_info {size_t ucode_id; TYPE_3__* fw; } ;
struct TYPE_8__ {TYPE_3__* fw; int fw_version; } ;
struct TYPE_7__ {scalar_t__ load_type; int fw_size; struct amdgpu_firmware_info* ucode; } ;
struct amdgpu_device {int asic_type; TYPE_2__ pm; TYPE_1__ firmware; int dev; } ;
typedef int fw_name ;
struct TYPE_9__ {scalar_t__ data; } ;


 scalar_t__ ALIGN (int ,int ) ;
 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 size_t AMDGPU_UCODE_ID_SMC ;
 int BUG () ;





 int DRM_ERROR (char*,char*) ;
 int PAGE_SIZE ;
 int amdgpu_ucode_print_smc_hdr (TYPE_6__*) ;
 int amdgpu_ucode_validate (TYPE_3__*) ;
 int le32_to_cpu (int ) ;
 int release_firmware (TYPE_3__*) ;
 int request_firmware (TYPE_3__**,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int smu_v11_0_init_microcode(struct smu_context *smu)
{
 struct amdgpu_device *adev = smu->adev;
 const char *chip_name;
 char fw_name[30];
 int err = 0;
 const struct smc_firmware_header_v1_0 *hdr;
 const struct common_firmware_header *header;
 struct amdgpu_firmware_info *ucode = ((void*)0);

 switch (adev->asic_type) {
 case 128:
  chip_name = "vega20";
  break;
 case 132:
  chip_name = "arcturus";
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
 default:
  BUG();
 }

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_smc.bin", chip_name);

 err = request_firmware(&adev->pm.fw, fw_name, adev->dev);
 if (err)
  goto out;
 err = amdgpu_ucode_validate(adev->pm.fw);
 if (err)
  goto out;

 hdr = (const struct smc_firmware_header_v1_0 *) adev->pm.fw->data;
 amdgpu_ucode_print_smc_hdr(&hdr->header);
 adev->pm.fw_version = le32_to_cpu(hdr->header.ucode_version);

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
  ucode = &adev->firmware.ucode[AMDGPU_UCODE_ID_SMC];
  ucode->ucode_id = AMDGPU_UCODE_ID_SMC;
  ucode->fw = adev->pm.fw;
  header = (const struct common_firmware_header *)ucode->fw->data;
  adev->firmware.fw_size +=
   ALIGN(le32_to_cpu(header->ucode_size_bytes), PAGE_SIZE);
 }

out:
 if (err) {
  DRM_ERROR("smu_v11_0: Failed to load firmware \"%s\"\n",
     fw_name);
  release_firmware(adev->pm.fw);
  adev->pm.fw = ((void*)0);
 }
 return err;
}
