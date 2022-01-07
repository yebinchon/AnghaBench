
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int ucode_array_offset_bytes; } ;
struct gfx_firmware_header_v1_0 {int jt_offset; unsigned int jt_size; TYPE_4__ header; } ;
struct TYPE_6__ {int mec_fw_gpu_addr; } ;
struct TYPE_7__ {int mec_fw_version; TYPE_2__ mec; TYPE_1__* mec_fw; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
typedef int __le32 ;
struct TYPE_5__ {scalar_t__ data; } ;


 int CACHE_POLICY ;
 int CP_CPC_IC_BASE_CNTL ;
 int EINVAL ;
 int GC ;
 int REG_SET_FIELD (int,int ,int ,int ) ;
 int VMID ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int amdgpu_ucode_print_gfx_hdr (TYPE_4__*) ;
 int gfx_v9_0_cp_compute_enable (struct amdgpu_device*,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int le32_to_cpup (int const*) ;
 int mmCP_CPC_IC_BASE_CNTL ;
 int mmCP_CPC_IC_BASE_HI ;
 int mmCP_CPC_IC_BASE_LO ;
 int mmCP_MEC_ME1_UCODE_ADDR ;
 int mmCP_MEC_ME1_UCODE_DATA ;
 int upper_32_bits (int) ;

__attribute__((used)) static int gfx_v9_0_cp_compute_load_microcode(struct amdgpu_device *adev)
{
 const struct gfx_firmware_header_v1_0 *mec_hdr;
 const __le32 *fw_data;
 unsigned i;
 u32 tmp;

 if (!adev->gfx.mec_fw)
  return -EINVAL;

 gfx_v9_0_cp_compute_enable(adev, 0);

 mec_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec_fw->data;
 amdgpu_ucode_print_gfx_hdr(&mec_hdr->header);

 fw_data = (const __le32 *)
  (adev->gfx.mec_fw->data +
   le32_to_cpu(mec_hdr->header.ucode_array_offset_bytes));
 tmp = 0;
 tmp = REG_SET_FIELD(tmp, CP_CPC_IC_BASE_CNTL, VMID, 0);
 tmp = REG_SET_FIELD(tmp, CP_CPC_IC_BASE_CNTL, CACHE_POLICY, 0);
 WREG32_SOC15(GC, 0, mmCP_CPC_IC_BASE_CNTL, tmp);

 WREG32_SOC15(GC, 0, mmCP_CPC_IC_BASE_LO,
  adev->gfx.mec.mec_fw_gpu_addr & 0xFFFFF000);
 WREG32_SOC15(GC, 0, mmCP_CPC_IC_BASE_HI,
  upper_32_bits(adev->gfx.mec.mec_fw_gpu_addr));


 WREG32_SOC15(GC, 0, mmCP_MEC_ME1_UCODE_ADDR,
    mec_hdr->jt_offset);
 for (i = 0; i < mec_hdr->jt_size; i++)
  WREG32_SOC15(GC, 0, mmCP_MEC_ME1_UCODE_DATA,
   le32_to_cpup(fw_data + mec_hdr->jt_offset + i));

 WREG32_SOC15(GC, 0, mmCP_MEC_ME1_UCODE_ADDR,
   adev->gfx.mec_fw_version);


 return 0;
}
