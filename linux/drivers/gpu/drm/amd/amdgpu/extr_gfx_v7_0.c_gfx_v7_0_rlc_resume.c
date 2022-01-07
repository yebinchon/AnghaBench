
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
struct TYPE_10__ {int ucode_size_bytes; int ucode_array_offset_bytes; int ucode_version; } ;
struct rlc_firmware_header_v1_0 {TYPE_5__ header; int ucode_feature_version; } ;
struct TYPE_8__ {TYPE_2__* funcs; } ;
struct TYPE_9__ {int rlc_fw_version; int rlc_feature_version; TYPE_3__ rlc; TYPE_1__* rlc_fw; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_4__ gfx; int grbm_idx_mutex; } ;
typedef int __le32 ;
struct TYPE_7__ {int (* start ) (struct amdgpu_device*) ;int (* reset ) (struct amdgpu_device*) ;int (* stop ) (struct amdgpu_device*) ;} ;
struct TYPE_6__ {scalar_t__ data; } ;


 scalar_t__ CHIP_BONAIRE ;
 int EINVAL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int amdgpu_ucode_print_rlc_hdr (TYPE_5__*) ;
 int gfx_v7_0_enable_lbpw (struct amdgpu_device*,int) ;
 int gfx_v7_0_init_pg (struct amdgpu_device*) ;
 int gfx_v7_0_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int mmRLC_CGCG_CGLS_CTRL ;
 int mmRLC_DRIVER_CPDMA_STATUS ;
 int mmRLC_GPM_UCODE_ADDR ;
 int mmRLC_GPM_UCODE_DATA ;
 int mmRLC_LB_CNTL ;
 int mmRLC_LB_CNTR_INIT ;
 int mmRLC_LB_CNTR_MAX ;
 int mmRLC_LB_INIT_CU_MASK ;
 int mmRLC_LB_PARAMS ;
 int mmRLC_MC_CNTL ;
 int mmRLC_UCODE_CNTL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct amdgpu_device*) ;
 int stub2 (struct amdgpu_device*) ;
 int stub3 (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v7_0_rlc_resume(struct amdgpu_device *adev)
{
 const struct rlc_firmware_header_v1_0 *hdr;
 const __le32 *fw_data;
 unsigned i, fw_size;
 u32 tmp;

 if (!adev->gfx.rlc_fw)
  return -EINVAL;

 hdr = (const struct rlc_firmware_header_v1_0 *)adev->gfx.rlc_fw->data;
 amdgpu_ucode_print_rlc_hdr(&hdr->header);
 adev->gfx.rlc_fw_version = le32_to_cpu(hdr->header.ucode_version);
 adev->gfx.rlc_feature_version = le32_to_cpu(
     hdr->ucode_feature_version);

 adev->gfx.rlc.funcs->stop(adev);


 tmp = RREG32(mmRLC_CGCG_CGLS_CTRL) & 0xfffffffc;
 WREG32(mmRLC_CGCG_CGLS_CTRL, tmp);

 adev->gfx.rlc.funcs->reset(adev);

 gfx_v7_0_init_pg(adev);

 WREG32(mmRLC_LB_CNTR_INIT, 0);
 WREG32(mmRLC_LB_CNTR_MAX, 0x00008000);

 mutex_lock(&adev->grbm_idx_mutex);
 gfx_v7_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
 WREG32(mmRLC_LB_INIT_CU_MASK, 0xffffffff);
 WREG32(mmRLC_LB_PARAMS, 0x00600408);
 WREG32(mmRLC_LB_CNTL, 0x80000004);
 mutex_unlock(&adev->grbm_idx_mutex);

 WREG32(mmRLC_MC_CNTL, 0);
 WREG32(mmRLC_UCODE_CNTL, 0);

 fw_data = (const __le32 *)
  (adev->gfx.rlc_fw->data + le32_to_cpu(hdr->header.ucode_array_offset_bytes));
 fw_size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;
 WREG32(mmRLC_GPM_UCODE_ADDR, 0);
 for (i = 0; i < fw_size; i++)
  WREG32(mmRLC_GPM_UCODE_DATA, le32_to_cpup(fw_data++));
 WREG32(mmRLC_GPM_UCODE_ADDR, adev->gfx.rlc_fw_version);


 gfx_v7_0_enable_lbpw(adev, 0);

 if (adev->asic_type == CHIP_BONAIRE)
  WREG32(mmRLC_DRIVER_CPDMA_STATUS, 0);

 adev->gfx.rlc.funcs->start(adev);

 return 0;
}
