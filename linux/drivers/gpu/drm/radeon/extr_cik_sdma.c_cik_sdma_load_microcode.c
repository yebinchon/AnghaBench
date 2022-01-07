
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ucode_size_bytes; int ucode_array_offset_bytes; } ;
struct sdma_firmware_header_v1_0 {TYPE_2__ header; } ;
struct radeon_device {TYPE_1__* sdma_fw; scalar_t__ new_fw; } ;
typedef int __le32 ;
typedef int __be32 ;
struct TYPE_3__ {scalar_t__ data; } ;


 int CIK_SDMA_UCODE_SIZE ;
 int CIK_SDMA_UCODE_VERSION ;
 int EINVAL ;
 scalar_t__ SDMA0_REGISTER_OFFSET ;
 scalar_t__ SDMA0_UCODE_ADDR ;
 scalar_t__ SDMA0_UCODE_DATA ;
 scalar_t__ SDMA1_REGISTER_OFFSET ;
 int WREG32 (scalar_t__,int ) ;
 int be32_to_cpup (int ) ;
 int cik_sdma_enable (struct radeon_device*,int) ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int radeon_ucode_print_sdma_hdr (TYPE_2__*) ;

__attribute__((used)) static int cik_sdma_load_microcode(struct radeon_device *rdev)
{
 int i;

 if (!rdev->sdma_fw)
  return -EINVAL;


 cik_sdma_enable(rdev, 0);

 if (rdev->new_fw) {
  const struct sdma_firmware_header_v1_0 *hdr =
   (const struct sdma_firmware_header_v1_0 *)rdev->sdma_fw->data;
  const __le32 *fw_data;
  u32 fw_size;

  radeon_ucode_print_sdma_hdr(&hdr->header);


  fw_data = (const __le32 *)
   (rdev->sdma_fw->data + le32_to_cpu(hdr->header.ucode_array_offset_bytes));
  fw_size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;
  WREG32(SDMA0_UCODE_ADDR + SDMA0_REGISTER_OFFSET, 0);
  for (i = 0; i < fw_size; i++)
   WREG32(SDMA0_UCODE_DATA + SDMA0_REGISTER_OFFSET, le32_to_cpup(fw_data++));
  WREG32(SDMA0_UCODE_DATA + SDMA0_REGISTER_OFFSET, CIK_SDMA_UCODE_VERSION);


  fw_data = (const __le32 *)
   (rdev->sdma_fw->data + le32_to_cpu(hdr->header.ucode_array_offset_bytes));
  fw_size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;
  WREG32(SDMA0_UCODE_ADDR + SDMA1_REGISTER_OFFSET, 0);
  for (i = 0; i < fw_size; i++)
   WREG32(SDMA0_UCODE_DATA + SDMA1_REGISTER_OFFSET, le32_to_cpup(fw_data++));
  WREG32(SDMA0_UCODE_DATA + SDMA1_REGISTER_OFFSET, CIK_SDMA_UCODE_VERSION);
 } else {
  const __be32 *fw_data;


  fw_data = (const __be32 *)rdev->sdma_fw->data;
  WREG32(SDMA0_UCODE_ADDR + SDMA0_REGISTER_OFFSET, 0);
  for (i = 0; i < CIK_SDMA_UCODE_SIZE; i++)
   WREG32(SDMA0_UCODE_DATA + SDMA0_REGISTER_OFFSET, be32_to_cpup(fw_data++));
  WREG32(SDMA0_UCODE_DATA + SDMA0_REGISTER_OFFSET, CIK_SDMA_UCODE_VERSION);


  fw_data = (const __be32 *)rdev->sdma_fw->data;
  WREG32(SDMA0_UCODE_ADDR + SDMA1_REGISTER_OFFSET, 0);
  for (i = 0; i < CIK_SDMA_UCODE_SIZE; i++)
   WREG32(SDMA0_UCODE_DATA + SDMA1_REGISTER_OFFSET, be32_to_cpup(fw_data++));
  WREG32(SDMA0_UCODE_DATA + SDMA1_REGISTER_OFFSET, CIK_SDMA_UCODE_VERSION);
 }

 WREG32(SDMA0_UCODE_ADDR + SDMA0_REGISTER_OFFSET, 0);
 WREG32(SDMA0_UCODE_ADDR + SDMA1_REGISTER_OFFSET, 0);
 return 0;
}
