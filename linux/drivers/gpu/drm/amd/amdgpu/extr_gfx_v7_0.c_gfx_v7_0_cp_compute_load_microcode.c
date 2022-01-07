
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ucode_size_bytes; int ucode_array_offset_bytes; int ucode_version; } ;
struct gfx_firmware_header_v1_0 {TYPE_4__ header; int ucode_feature_version; } ;
struct TYPE_7__ {int mec_fw_version; int mec_feature_version; int mec2_fw_version; int mec2_feature_version; TYPE_2__* mec2_fw; TYPE_1__* mec_fw; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ gfx; } ;
typedef int __le32 ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 scalar_t__ CHIP_KAVERI ;
 int EINVAL ;
 int WREG32 (int ,int ) ;
 int amdgpu_ucode_print_gfx_hdr (TYPE_4__*) ;
 int gfx_v7_0_cp_compute_enable (struct amdgpu_device*,int) ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int mmCP_MEC_ME1_UCODE_ADDR ;
 int mmCP_MEC_ME1_UCODE_DATA ;
 int mmCP_MEC_ME2_UCODE_ADDR ;
 int mmCP_MEC_ME2_UCODE_DATA ;

__attribute__((used)) static int gfx_v7_0_cp_compute_load_microcode(struct amdgpu_device *adev)
{
 const struct gfx_firmware_header_v1_0 *mec_hdr;
 const __le32 *fw_data;
 unsigned i, fw_size;

 if (!adev->gfx.mec_fw)
  return -EINVAL;

 mec_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec_fw->data;
 amdgpu_ucode_print_gfx_hdr(&mec_hdr->header);
 adev->gfx.mec_fw_version = le32_to_cpu(mec_hdr->header.ucode_version);
 adev->gfx.mec_feature_version = le32_to_cpu(
     mec_hdr->ucode_feature_version);

 gfx_v7_0_cp_compute_enable(adev, 0);


 fw_data = (const __le32 *)
  (adev->gfx.mec_fw->data +
   le32_to_cpu(mec_hdr->header.ucode_array_offset_bytes));
 fw_size = le32_to_cpu(mec_hdr->header.ucode_size_bytes) / 4;
 WREG32(mmCP_MEC_ME1_UCODE_ADDR, 0);
 for (i = 0; i < fw_size; i++)
  WREG32(mmCP_MEC_ME1_UCODE_DATA, le32_to_cpup(fw_data++));
 WREG32(mmCP_MEC_ME1_UCODE_ADDR, 0);

 if (adev->asic_type == CHIP_KAVERI) {
  const struct gfx_firmware_header_v1_0 *mec2_hdr;

  if (!adev->gfx.mec2_fw)
   return -EINVAL;

  mec2_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec2_fw->data;
  amdgpu_ucode_print_gfx_hdr(&mec2_hdr->header);
  adev->gfx.mec2_fw_version = le32_to_cpu(mec2_hdr->header.ucode_version);
  adev->gfx.mec2_feature_version = le32_to_cpu(
    mec2_hdr->ucode_feature_version);


  fw_data = (const __le32 *)
   (adev->gfx.mec2_fw->data +
    le32_to_cpu(mec2_hdr->header.ucode_array_offset_bytes));
  fw_size = le32_to_cpu(mec2_hdr->header.ucode_size_bytes) / 4;
  WREG32(mmCP_MEC_ME2_UCODE_ADDR, 0);
  for (i = 0; i < fw_size; i++)
   WREG32(mmCP_MEC_ME2_UCODE_DATA, le32_to_cpup(fw_data++));
  WREG32(mmCP_MEC_ME2_UCODE_ADDR, 0);
 }

 return 0;
}
