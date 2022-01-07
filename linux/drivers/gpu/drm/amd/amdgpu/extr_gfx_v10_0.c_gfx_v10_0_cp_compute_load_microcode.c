
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_10__ {int ucode_array_offset_bytes; } ;
struct gfx_firmware_header_v1_0 {unsigned int jt_size; int jt_offset; TYPE_5__ header; } ;
struct TYPE_8__ {int mec_fw_gpu_addr; } ;
struct TYPE_9__ {int mec_fw_version; TYPE_3__ mec; TYPE_1__* mec_fw; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_2__* nbio_funcs; int dev; } ;
typedef int __le32 ;
struct TYPE_7__ {int (* hdp_flush ) (struct amdgpu_device*,int *) ;} ;
struct TYPE_6__ {scalar_t__ data; } ;


 int ADDRESS_CLAMP ;
 int CACHE_POLICY ;
 int CP_CPC_IC_BASE_CNTL ;
 int CP_CPC_IC_OP_CNTL ;
 int EINVAL ;
 int EXE_DISABLE ;
 int GC ;
 int INVALIDATE_CACHE ;
 int INVALIDATE_CACHE_COMPLETE ;
 int REG_GET_FIELD (unsigned int,int ,int ) ;
 unsigned int REG_SET_FIELD (unsigned int,int ,int ,int) ;
 unsigned int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int amdgpu_emu_mode ;
 int amdgpu_ucode_print_gfx_hdr (TYPE_5__*) ;
 int dev_err (int ,char*) ;
 int gfx_v10_0_cp_compute_enable (struct amdgpu_device*,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int le32_to_cpup (int const*) ;
 int mmCP_CPC_IC_BASE_CNTL ;
 int mmCP_CPC_IC_BASE_HI ;
 int mmCP_CPC_IC_BASE_LO ;
 int mmCP_CPC_IC_OP_CNTL ;
 int mmCP_MEC_ME1_UCODE_ADDR ;
 int mmCP_MEC_ME1_UCODE_DATA ;
 int stub1 (struct amdgpu_device*,int *) ;
 int udelay (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int gfx_v10_0_cp_compute_load_microcode(struct amdgpu_device *adev)
{
 const struct gfx_firmware_header_v1_0 *mec_hdr;
 const __le32 *fw_data;
 unsigned i;
 u32 tmp;
 u32 usec_timeout = 50000;

 if (!adev->gfx.mec_fw)
  return -EINVAL;

 gfx_v10_0_cp_compute_enable(adev, 0);

 mec_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec_fw->data;
 amdgpu_ucode_print_gfx_hdr(&mec_hdr->header);

 fw_data = (const __le32 *)
  (adev->gfx.mec_fw->data +
   le32_to_cpu(mec_hdr->header.ucode_array_offset_bytes));


 tmp = RREG32_SOC15(GC, 0, mmCP_CPC_IC_OP_CNTL);
 tmp = REG_SET_FIELD(tmp, CP_CPC_IC_OP_CNTL, INVALIDATE_CACHE, 1);
 WREG32_SOC15(GC, 0, mmCP_CPC_IC_OP_CNTL, tmp);


 for (i = 0; i < usec_timeout; i++) {
  tmp = RREG32_SOC15(GC, 0, mmCP_CPC_IC_OP_CNTL);
  if (1 == REG_GET_FIELD(tmp, CP_CPC_IC_OP_CNTL,
           INVALIDATE_CACHE_COMPLETE))
   break;
  udelay(1);
 }

 if (i >= usec_timeout) {
  dev_err(adev->dev, "failed to invalidate instruction cache\n");
  return -EINVAL;
 }

 if (amdgpu_emu_mode == 1)
  adev->nbio_funcs->hdp_flush(adev, ((void*)0));

 tmp = RREG32_SOC15(GC, 0, mmCP_CPC_IC_BASE_CNTL);
 tmp = REG_SET_FIELD(tmp, CP_CPC_IC_BASE_CNTL, CACHE_POLICY, 0);
 tmp = REG_SET_FIELD(tmp, CP_CPC_IC_BASE_CNTL, EXE_DISABLE, 0);
 tmp = REG_SET_FIELD(tmp, CP_CPC_IC_BASE_CNTL, ADDRESS_CLAMP, 1);
 WREG32_SOC15(GC, 0, mmCP_CPC_IC_BASE_CNTL, tmp);

 WREG32_SOC15(GC, 0, mmCP_CPC_IC_BASE_LO, adev->gfx.mec.mec_fw_gpu_addr &
       0xFFFFF000);
 WREG32_SOC15(GC, 0, mmCP_CPC_IC_BASE_HI,
       upper_32_bits(adev->gfx.mec.mec_fw_gpu_addr));


 WREG32_SOC15(GC, 0, mmCP_MEC_ME1_UCODE_ADDR, 0);

 for (i = 0; i < mec_hdr->jt_size; i++)
  WREG32_SOC15(GC, 0, mmCP_MEC_ME1_UCODE_DATA,
        le32_to_cpup(fw_data + mec_hdr->jt_offset + i));

 WREG32_SOC15(GC, 0, mmCP_MEC_ME1_UCODE_ADDR, adev->gfx.mec_fw_version);






 return 0;
}
