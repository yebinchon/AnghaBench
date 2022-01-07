
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ucode_size_bytes; int ucode_array_offset_bytes; } ;
struct rlc_firmware_header_v2_0 {TYPE_3__ header; } ;
struct TYPE_5__ {int rlc_fw_version; TYPE_1__* rlc_fw; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;
typedef int __le32 ;
struct TYPE_4__ {scalar_t__ data; } ;


 int EINVAL ;
 int GC ;
 int RLCG_UCODE_LOADING_START_ADDRESS ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int amdgpu_ucode_print_rlc_hdr (TYPE_3__*) ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int mmRLC_GPM_UCODE_ADDR ;
 int mmRLC_GPM_UCODE_DATA ;

__attribute__((used)) static int gfx_v10_0_rlc_load_microcode(struct amdgpu_device *adev)
{
 const struct rlc_firmware_header_v2_0 *hdr;
 const __le32 *fw_data;
 unsigned i, fw_size;

 if (!adev->gfx.rlc_fw)
  return -EINVAL;

 hdr = (const struct rlc_firmware_header_v2_0 *)adev->gfx.rlc_fw->data;
 amdgpu_ucode_print_rlc_hdr(&hdr->header);

 fw_data = (const __le32 *)(adev->gfx.rlc_fw->data +
      le32_to_cpu(hdr->header.ucode_array_offset_bytes));
 fw_size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;

 WREG32_SOC15(GC, 0, mmRLC_GPM_UCODE_ADDR,
       RLCG_UCODE_LOADING_START_ADDRESS);

 for (i = 0; i < fw_size; i++)
  WREG32_SOC15(GC, 0, mmRLC_GPM_UCODE_DATA,
        le32_to_cpup(fw_data++));

 WREG32_SOC15(GC, 0, mmRLC_GPM_UCODE_ADDR, adev->gfx.rlc_fw_version);

 return 0;
}
