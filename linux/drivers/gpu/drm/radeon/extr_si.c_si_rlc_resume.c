
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int ucode_array_offset_bytes; int ucode_size_bytes; } ;
struct rlc_firmware_header_v1_0 {TYPE_2__ header; } ;
struct radeon_device {TYPE_1__* rlc_fw; scalar_t__ new_fw; } ;
typedef int __le32 ;
typedef int __be32 ;
struct TYPE_3__ {scalar_t__ data; } ;


 int EINVAL ;
 int RLC_LB_CNTL ;
 int RLC_LB_CNTR_INIT ;
 int RLC_LB_CNTR_MAX ;
 int RLC_LB_INIT_CU_MASK ;
 int RLC_MC_CNTL ;
 int RLC_RL_BASE ;
 int RLC_RL_SIZE ;
 int RLC_UCODE_ADDR ;
 int RLC_UCODE_CNTL ;
 int RLC_UCODE_DATA ;
 scalar_t__ SI_RLC_UCODE_SIZE ;
 int WREG32 (int ,scalar_t__) ;
 scalar_t__ be32_to_cpup (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le32_to_cpup (int ) ;
 int radeon_ucode_print_rlc_hdr (TYPE_2__*) ;
 int si_enable_lbpw (struct radeon_device*,int ) ;
 int si_init_cg (struct radeon_device*) ;
 int si_init_pg (struct radeon_device*) ;
 int si_lbpw_supported (struct radeon_device*) ;
 int si_rlc_reset (struct radeon_device*) ;
 int si_rlc_start (struct radeon_device*) ;
 int si_rlc_stop (struct radeon_device*) ;

__attribute__((used)) static int si_rlc_resume(struct radeon_device *rdev)
{
 u32 i;

 if (!rdev->rlc_fw)
  return -EINVAL;

 si_rlc_stop(rdev);

 si_rlc_reset(rdev);

 si_init_pg(rdev);

 si_init_cg(rdev);

 WREG32(RLC_RL_BASE, 0);
 WREG32(RLC_RL_SIZE, 0);
 WREG32(RLC_LB_CNTL, 0);
 WREG32(RLC_LB_CNTR_MAX, 0xffffffff);
 WREG32(RLC_LB_CNTR_INIT, 0);
 WREG32(RLC_LB_INIT_CU_MASK, 0xffffffff);

 WREG32(RLC_MC_CNTL, 0);
 WREG32(RLC_UCODE_CNTL, 0);

 if (rdev->new_fw) {
  const struct rlc_firmware_header_v1_0 *hdr =
   (const struct rlc_firmware_header_v1_0 *)rdev->rlc_fw->data;
  u32 fw_size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;
  const __le32 *fw_data = (const __le32 *)
   (rdev->rlc_fw->data + le32_to_cpu(hdr->header.ucode_array_offset_bytes));

  radeon_ucode_print_rlc_hdr(&hdr->header);

  for (i = 0; i < fw_size; i++) {
   WREG32(RLC_UCODE_ADDR, i);
   WREG32(RLC_UCODE_DATA, le32_to_cpup(fw_data++));
  }
 } else {
  const __be32 *fw_data =
   (const __be32 *)rdev->rlc_fw->data;
  for (i = 0; i < SI_RLC_UCODE_SIZE; i++) {
   WREG32(RLC_UCODE_ADDR, i);
   WREG32(RLC_UCODE_DATA, be32_to_cpup(fw_data++));
  }
 }
 WREG32(RLC_UCODE_ADDR, 0);

 si_enable_lbpw(rdev, si_lbpw_supported(rdev));

 si_rlc_start(rdev);

 return 0;
}
