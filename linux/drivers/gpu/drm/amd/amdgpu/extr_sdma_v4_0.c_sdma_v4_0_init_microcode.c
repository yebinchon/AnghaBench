
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct common_firmware_header {int ucode_size_bytes; } ;
struct amdgpu_sdma_instance {int dummy; } ;
struct amdgpu_firmware_info {int ucode_id; TYPE_5__* fw; } ;
struct TYPE_8__ {scalar_t__ load_type; int fw_size; struct amdgpu_firmware_info* ucode; } ;
struct TYPE_7__ {int num_instances; TYPE_4__* instance; } ;
struct amdgpu_device {int asic_type; int rev_id; TYPE_3__ firmware; TYPE_2__ sdma; int dev; TYPE_1__* pdev; } ;
typedef int fw_name ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_5__* fw; } ;
struct TYPE_6__ {int device; } ;


 scalar_t__ ALIGN (int ,int ) ;
 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 int AMDGPU_UCODE_ID_SDMA0 ;
 int BUG () ;






 int DRM_DEBUG (char*,...) ;
 int DRM_ERROR (char*,char*) ;
 int PAGE_SIZE ;
 int le32_to_cpu (int ) ;
 int memcpy (void*,void*,int) ;
 int request_firmware (TYPE_5__**,char*,int ) ;
 int sdma_v4_0_destroy_inst_ctx (struct amdgpu_device*) ;
 int sdma_v4_0_init_inst_ctx (TYPE_4__*) ;
 int snprintf (char*,int,char*,char const*,...) ;

__attribute__((used)) static int sdma_v4_0_init_microcode(struct amdgpu_device *adev)
{
 const char *chip_name;
 char fw_name[30];
 int err = 0, i;
 struct amdgpu_firmware_info *info = ((void*)0);
 const struct common_firmware_header *header = ((void*)0);

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 130:
  chip_name = "vega10";
  break;
 case 129:
  chip_name = "vega12";
  break;
 case 128:
  chip_name = "vega20";
  break;
 case 132:
  if (adev->rev_id >= 8)
   chip_name = "raven2";
  else if (adev->pdev->device == 0x15d8)
   chip_name = "picasso";
  else
   chip_name = "raven";
  break;
 case 133:
  chip_name = "arcturus";
  break;
 case 131:
  chip_name = "renoir";
  break;
 default:
  BUG();
 }

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_sdma.bin", chip_name);

 err = request_firmware(&adev->sdma.instance[0].fw, fw_name, adev->dev);
 if (err)
  goto out;

 err = sdma_v4_0_init_inst_ctx(&adev->sdma.instance[0]);
 if (err)
  goto out;

 for (i = 1; i < adev->sdma.num_instances; i++) {
  if (adev->asic_type == 133) {


   memcpy((void*)&adev->sdma.instance[i],
          (void*)&adev->sdma.instance[0],
          sizeof(struct amdgpu_sdma_instance));
  }
  else {
   snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_sdma%d.bin", chip_name, i);

   err = request_firmware(&adev->sdma.instance[i].fw, fw_name, adev->dev);
   if (err)
    goto out;

   err = sdma_v4_0_init_inst_ctx(&adev->sdma.instance[i]);
   if (err)
    goto out;
  }
 }

 DRM_DEBUG("psp_load == '%s'\n",
  adev->firmware.load_type == AMDGPU_FW_LOAD_PSP ? "true" : "false");

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
  for (i = 0; i < adev->sdma.num_instances; i++) {
   info = &adev->firmware.ucode[AMDGPU_UCODE_ID_SDMA0 + i];
   info->ucode_id = AMDGPU_UCODE_ID_SDMA0 + i;
   info->fw = adev->sdma.instance[i].fw;
   header = (const struct common_firmware_header *)info->fw->data;
   adev->firmware.fw_size +=
    ALIGN(le32_to_cpu(header->ucode_size_bytes), PAGE_SIZE);
  }
 }

out:
 if (err) {
  DRM_ERROR("sdma_v4_0: Failed to load firmware \"%s\"\n", fw_name);
  sdma_v4_0_destroy_inst_ctx(adev);
 }
 return err;
}
