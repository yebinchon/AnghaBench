
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int ucode_array_offset_bytes; int ucode_size_bytes; } ;
struct sdma_firmware_header_v1_0 {TYPE_4__ header; } ;
struct TYPE_7__ {int num_instances; TYPE_2__* instance; } ;
struct amdgpu_device {TYPE_3__ sdma; } ;
typedef int __le32 ;
struct TYPE_6__ {int fw_version; TYPE_1__* fw; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int EINVAL ;
 int WREG32_SDMA (int,int ,int ) ;
 int amdgpu_ucode_print_sdma_hdr (TYPE_4__*) ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int mmSDMA0_UCODE_ADDR ;
 int mmSDMA0_UCODE_DATA ;
 int sdma_v4_0_enable (struct amdgpu_device*,int) ;

__attribute__((used)) static int sdma_v4_0_load_microcode(struct amdgpu_device *adev)
{
 const struct sdma_firmware_header_v1_0 *hdr;
 const __le32 *fw_data;
 u32 fw_size;
 int i, j;


 sdma_v4_0_enable(adev, 0);

 for (i = 0; i < adev->sdma.num_instances; i++) {
  if (!adev->sdma.instance[i].fw)
   return -EINVAL;

  hdr = (const struct sdma_firmware_header_v1_0 *)adev->sdma.instance[i].fw->data;
  amdgpu_ucode_print_sdma_hdr(&hdr->header);
  fw_size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;

  fw_data = (const __le32 *)
   (adev->sdma.instance[i].fw->data +
    le32_to_cpu(hdr->header.ucode_array_offset_bytes));

  WREG32_SDMA(i, mmSDMA0_UCODE_ADDR, 0);

  for (j = 0; j < fw_size; j++)
   WREG32_SDMA(i, mmSDMA0_UCODE_DATA,
        le32_to_cpup(fw_data++));

  WREG32_SDMA(i, mmSDMA0_UCODE_ADDR,
       adev->sdma.instance[i].fw_version);
 }

 return 0;
}
