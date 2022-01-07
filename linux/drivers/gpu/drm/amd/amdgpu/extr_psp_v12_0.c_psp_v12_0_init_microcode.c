
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int ucode_array_offset_bytes; int ucode_size_bytes; int ucode_version; } ;
struct psp_firmware_header_v1_0 {TYPE_1__ header; int ucode_feature_version; } ;
struct psp_context {struct amdgpu_device* adev; } ;
struct TYPE_7__ {int asd_fw_version; int asd_feature_version; int asd_ucode_size; TYPE_3__* asd_fw; int * asd_start_addr; } ;
struct amdgpu_device {int asic_type; TYPE_2__ psp; int dev; } ;
typedef int fw_name ;
struct TYPE_8__ {scalar_t__ data; } ;


 int BUG () ;

 int DRM_DEBUG (char*) ;
 int amdgpu_ucode_validate (TYPE_3__*) ;
 int le32_to_cpu (int ) ;
 int release_firmware (TYPE_3__*) ;
 int request_firmware (TYPE_3__**,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int psp_v12_0_init_microcode(struct psp_context *psp)
{
 struct amdgpu_device *adev = psp->adev;
 const char *chip_name;
 char fw_name[30];
 int err = 0;
 const struct psp_firmware_header_v1_0 *asd_hdr;

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 128:
  chip_name = "renoir";
  break;
 default:
  BUG();
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

 return 0;

out1:
 release_firmware(adev->psp.asd_fw);
 adev->psp.asd_fw = ((void*)0);

 return err;
}
