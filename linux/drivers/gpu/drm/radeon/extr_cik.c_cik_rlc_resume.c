
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int ucode_version; int ucode_size_bytes; int ucode_array_offset_bytes; } ;
struct rlc_firmware_header_v1_0 {TYPE_2__ header; } ;
struct radeon_device {int family; TYPE_1__* rlc_fw; scalar_t__ new_fw; } ;
typedef int __le32 ;
typedef int __be32 ;
struct TYPE_3__ {scalar_t__ data; } ;


 scalar_t__ BONAIRE_RLC_UCODE_SIZE ;





 int EINVAL ;
 scalar_t__ KB_RLC_UCODE_SIZE ;
 scalar_t__ KV_RLC_UCODE_SIZE ;
 scalar_t__ ML_RLC_UCODE_SIZE ;
 int RLC_CGCG_CGLS_CTRL ;
 int RLC_DRIVER_DMA_STATUS ;
 int RLC_GPM_UCODE_ADDR ;
 int RLC_GPM_UCODE_DATA ;
 int RLC_LB_CNTL ;
 int RLC_LB_CNTR_INIT ;
 int RLC_LB_CNTR_MAX ;
 int RLC_LB_INIT_CU_MASK ;
 int RLC_LB_PARAMS ;
 int RLC_MC_CNTL ;
 int RLC_UCODE_CNTL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int be32_to_cpup (int ) ;
 int cik_enable_lbpw (struct radeon_device*,int) ;
 int cik_init_cg (struct radeon_device*) ;
 int cik_init_pg (struct radeon_device*) ;
 int cik_rlc_start (struct radeon_device*) ;
 int cik_rlc_stop (struct radeon_device*) ;
 int cik_select_se_sh (struct radeon_device*,int,int) ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int radeon_ucode_print_rlc_hdr (TYPE_2__*) ;
 int si_rlc_reset (struct radeon_device*) ;

__attribute__((used)) static int cik_rlc_resume(struct radeon_device *rdev)
{
 u32 i, size, tmp;

 if (!rdev->rlc_fw)
  return -EINVAL;

 cik_rlc_stop(rdev);


 tmp = RREG32(RLC_CGCG_CGLS_CTRL) & 0xfffffffc;
 WREG32(RLC_CGCG_CGLS_CTRL, tmp);

 si_rlc_reset(rdev);

 cik_init_pg(rdev);

 cik_init_cg(rdev);

 WREG32(RLC_LB_CNTR_INIT, 0);
 WREG32(RLC_LB_CNTR_MAX, 0x00008000);

 cik_select_se_sh(rdev, 0xffffffff, 0xffffffff);
 WREG32(RLC_LB_INIT_CU_MASK, 0xffffffff);
 WREG32(RLC_LB_PARAMS, 0x00600408);
 WREG32(RLC_LB_CNTL, 0x80000004);

 WREG32(RLC_MC_CNTL, 0);
 WREG32(RLC_UCODE_CNTL, 0);

 if (rdev->new_fw) {
  const struct rlc_firmware_header_v1_0 *hdr =
   (const struct rlc_firmware_header_v1_0 *)rdev->rlc_fw->data;
  const __le32 *fw_data = (const __le32 *)
   (rdev->rlc_fw->data + le32_to_cpu(hdr->header.ucode_array_offset_bytes));

  radeon_ucode_print_rlc_hdr(&hdr->header);

  size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;
  WREG32(RLC_GPM_UCODE_ADDR, 0);
  for (i = 0; i < size; i++)
   WREG32(RLC_GPM_UCODE_DATA, le32_to_cpup(fw_data++));
  WREG32(RLC_GPM_UCODE_ADDR, le32_to_cpu(hdr->header.ucode_version));
 } else {
  const __be32 *fw_data;

  switch (rdev->family) {
  case 132:
  case 131:
  default:
   size = BONAIRE_RLC_UCODE_SIZE;
   break;
  case 129:
   size = KV_RLC_UCODE_SIZE;
   break;
  case 130:
   size = KB_RLC_UCODE_SIZE;
   break;
  case 128:
   size = ML_RLC_UCODE_SIZE;
   break;
  }

  fw_data = (const __be32 *)rdev->rlc_fw->data;
  WREG32(RLC_GPM_UCODE_ADDR, 0);
  for (i = 0; i < size; i++)
   WREG32(RLC_GPM_UCODE_DATA, be32_to_cpup(fw_data++));
  WREG32(RLC_GPM_UCODE_ADDR, 0);
 }


 cik_enable_lbpw(rdev, 0);

 if (rdev->family == 132)
  WREG32(RLC_DRIVER_DMA_STATUS, 0);

 cik_rlc_start(rdev);

 return 0;
}
