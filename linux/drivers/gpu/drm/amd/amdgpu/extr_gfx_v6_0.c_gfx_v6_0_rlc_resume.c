
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int ucode_array_offset_bytes; int ucode_size_bytes; } ;
struct rlc_firmware_header_v1_0 {TYPE_5__ header; } ;
struct TYPE_8__ {TYPE_2__* funcs; } ;
struct TYPE_9__ {TYPE_3__ rlc; TYPE_1__* rlc_fw; } ;
struct amdgpu_device {TYPE_4__ gfx; } ;
typedef int __le32 ;
struct TYPE_7__ {int (* start ) (struct amdgpu_device*) ;int (* reset ) (struct amdgpu_device*) ;int (* stop ) (struct amdgpu_device*) ;} ;
struct TYPE_6__ {scalar_t__ data; } ;


 int EINVAL ;
 int WREG32 (int ,int) ;
 int amdgpu_ucode_print_rlc_hdr (TYPE_5__*) ;
 int gfx_v6_0_enable_lbpw (struct amdgpu_device*,int ) ;
 int gfx_v6_0_init_cg (struct amdgpu_device*) ;
 int gfx_v6_0_init_pg (struct amdgpu_device*) ;
 int gfx_v6_0_lbpw_supported (struct amdgpu_device*) ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int mmRLC_LB_CNTL ;
 int mmRLC_LB_CNTR_INIT ;
 int mmRLC_LB_CNTR_MAX ;
 int mmRLC_LB_INIT_CU_MASK ;
 int mmRLC_MC_CNTL ;
 int mmRLC_RL_BASE ;
 int mmRLC_RL_SIZE ;
 int mmRLC_UCODE_ADDR ;
 int mmRLC_UCODE_CNTL ;
 int mmRLC_UCODE_DATA ;
 int stub1 (struct amdgpu_device*) ;
 int stub2 (struct amdgpu_device*) ;
 int stub3 (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v6_0_rlc_resume(struct amdgpu_device *adev)
{
 u32 i;
 const struct rlc_firmware_header_v1_0 *hdr;
 const __le32 *fw_data;
 u32 fw_size;


 if (!adev->gfx.rlc_fw)
  return -EINVAL;

 adev->gfx.rlc.funcs->stop(adev);
 adev->gfx.rlc.funcs->reset(adev);
 gfx_v6_0_init_pg(adev);
 gfx_v6_0_init_cg(adev);

 WREG32(mmRLC_RL_BASE, 0);
 WREG32(mmRLC_RL_SIZE, 0);
 WREG32(mmRLC_LB_CNTL, 0);
 WREG32(mmRLC_LB_CNTR_MAX, 0xffffffff);
 WREG32(mmRLC_LB_CNTR_INIT, 0);
 WREG32(mmRLC_LB_INIT_CU_MASK, 0xffffffff);

 WREG32(mmRLC_MC_CNTL, 0);
 WREG32(mmRLC_UCODE_CNTL, 0);

 hdr = (const struct rlc_firmware_header_v1_0 *)adev->gfx.rlc_fw->data;
 fw_size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;
 fw_data = (const __le32 *)
  (adev->gfx.rlc_fw->data + le32_to_cpu(hdr->header.ucode_array_offset_bytes));

 amdgpu_ucode_print_rlc_hdr(&hdr->header);

 for (i = 0; i < fw_size; i++) {
  WREG32(mmRLC_UCODE_ADDR, i);
  WREG32(mmRLC_UCODE_DATA, le32_to_cpup(fw_data++));
 }
 WREG32(mmRLC_UCODE_ADDR, 0);

 gfx_v6_0_enable_lbpw(adev, gfx_v6_0_lbpw_supported(adev));
 adev->gfx.rlc.funcs->start(adev);

 return 0;
}
