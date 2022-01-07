
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {TYPE_3__* me_fw; TYPE_2__* ce_fw; TYPE_1__* pfp_fw; scalar_t__ new_fw; } ;
struct TYPE_8__ {int ucode_size_bytes; int ucode_array_offset_bytes; } ;
struct gfx_firmware_header_v1_0 {TYPE_4__ header; } ;
typedef int __le32 ;
typedef int __be32 ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int CP_CE_UCODE_ADDR ;
 int CP_CE_UCODE_DATA ;
 int CP_ME_RAM_DATA ;
 int CP_ME_RAM_RADDR ;
 int CP_ME_RAM_WADDR ;
 int CP_PFP_UCODE_ADDR ;
 int CP_PFP_UCODE_DATA ;
 int EINVAL ;
 int SI_CE_UCODE_SIZE ;
 int SI_PFP_UCODE_SIZE ;
 int SI_PM4_UCODE_SIZE ;
 int WREG32 (int ,int ) ;
 int be32_to_cpup (int ) ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int radeon_ucode_print_gfx_hdr (TYPE_4__*) ;
 int si_cp_enable (struct radeon_device*,int) ;

__attribute__((used)) static int si_cp_load_microcode(struct radeon_device *rdev)
{
 int i;

 if (!rdev->me_fw || !rdev->pfp_fw || !rdev->ce_fw)
  return -EINVAL;

 si_cp_enable(rdev, 0);

 if (rdev->new_fw) {
  const struct gfx_firmware_header_v1_0 *pfp_hdr =
   (const struct gfx_firmware_header_v1_0 *)rdev->pfp_fw->data;
  const struct gfx_firmware_header_v1_0 *ce_hdr =
   (const struct gfx_firmware_header_v1_0 *)rdev->ce_fw->data;
  const struct gfx_firmware_header_v1_0 *me_hdr =
   (const struct gfx_firmware_header_v1_0 *)rdev->me_fw->data;
  const __le32 *fw_data;
  u32 fw_size;

  radeon_ucode_print_gfx_hdr(&pfp_hdr->header);
  radeon_ucode_print_gfx_hdr(&ce_hdr->header);
  radeon_ucode_print_gfx_hdr(&me_hdr->header);


  fw_data = (const __le32 *)
   (rdev->pfp_fw->data + le32_to_cpu(pfp_hdr->header.ucode_array_offset_bytes));
  fw_size = le32_to_cpu(pfp_hdr->header.ucode_size_bytes) / 4;
  WREG32(CP_PFP_UCODE_ADDR, 0);
  for (i = 0; i < fw_size; i++)
   WREG32(CP_PFP_UCODE_DATA, le32_to_cpup(fw_data++));
  WREG32(CP_PFP_UCODE_ADDR, 0);


  fw_data = (const __le32 *)
   (rdev->ce_fw->data + le32_to_cpu(ce_hdr->header.ucode_array_offset_bytes));
  fw_size = le32_to_cpu(ce_hdr->header.ucode_size_bytes) / 4;
  WREG32(CP_CE_UCODE_ADDR, 0);
  for (i = 0; i < fw_size; i++)
   WREG32(CP_CE_UCODE_DATA, le32_to_cpup(fw_data++));
  WREG32(CP_CE_UCODE_ADDR, 0);


  fw_data = (const __be32 *)
   (rdev->me_fw->data + le32_to_cpu(me_hdr->header.ucode_array_offset_bytes));
  fw_size = le32_to_cpu(me_hdr->header.ucode_size_bytes) / 4;
  WREG32(CP_ME_RAM_WADDR, 0);
  for (i = 0; i < fw_size; i++)
   WREG32(CP_ME_RAM_DATA, le32_to_cpup(fw_data++));
  WREG32(CP_ME_RAM_WADDR, 0);
 } else {
  const __be32 *fw_data;


  fw_data = (const __be32 *)rdev->pfp_fw->data;
  WREG32(CP_PFP_UCODE_ADDR, 0);
  for (i = 0; i < SI_PFP_UCODE_SIZE; i++)
   WREG32(CP_PFP_UCODE_DATA, be32_to_cpup(fw_data++));
  WREG32(CP_PFP_UCODE_ADDR, 0);


  fw_data = (const __be32 *)rdev->ce_fw->data;
  WREG32(CP_CE_UCODE_ADDR, 0);
  for (i = 0; i < SI_CE_UCODE_SIZE; i++)
   WREG32(CP_CE_UCODE_DATA, be32_to_cpup(fw_data++));
  WREG32(CP_CE_UCODE_ADDR, 0);


  fw_data = (const __be32 *)rdev->me_fw->data;
  WREG32(CP_ME_RAM_WADDR, 0);
  for (i = 0; i < SI_PM4_UCODE_SIZE; i++)
   WREG32(CP_ME_RAM_DATA, be32_to_cpup(fw_data++));
  WREG32(CP_ME_RAM_WADDR, 0);
 }

 WREG32(CP_PFP_UCODE_ADDR, 0);
 WREG32(CP_CE_UCODE_ADDR, 0);
 WREG32(CP_ME_RAM_WADDR, 0);
 WREG32(CP_ME_RAM_RADDR, 0);
 return 0;
}
