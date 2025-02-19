
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int save_restore_gpu_addr; int clear_state_gpu_addr; } ;
struct TYPE_5__ {int max_shader_engines; int max_simds_per_se; } ;
struct TYPE_6__ {TYPE_1__ cayman; } ;
struct radeon_device {int flags; scalar_t__ family; TYPE_4__* rlc_fw; TYPE_3__ rlc; TYPE_2__ config; } ;
typedef int __be32 ;
struct TYPE_8__ {scalar_t__ data; } ;


 int ARUBA_RLC_UCODE_SIZE ;
 int CAYMAN_RLC_UCODE_SIZE ;
 int CC_GC_SHADER_PIPE_CONFIG ;
 scalar_t__ CHIP_ARUBA ;
 scalar_t__ CHIP_CAYMAN ;
 int EINVAL ;
 int EVERGREEN_RLC_UCODE_SIZE ;
 int RADEON_IS_IGP ;
 int RLC_HB_BASE ;
 int RLC_HB_CNTL ;
 int RLC_HB_RPTR ;
 int RLC_HB_WPTR ;
 int RLC_HB_WPTR_LSB_ADDR ;
 int RLC_HB_WPTR_MSB_ADDR ;
 int RLC_MC_CNTL ;
 int RLC_UCODE_ADDR ;
 int RLC_UCODE_CNTL ;
 int RLC_UCODE_DATA ;
 int RREG32 (int ) ;
 int TN_RLC_CLEAR_STATE_RESTORE_BASE ;
 int TN_RLC_LB_ALWAYS_ACTIVE_SIMD_MASK ;
 int TN_RLC_LB_CNTR_INIT ;
 int TN_RLC_LB_CNTR_MAX ;
 int TN_RLC_LB_INIT_SIMD_MASK ;
 int TN_RLC_LB_PARAMS ;
 int TN_RLC_SAVE_AND_RESTORE_BASE ;
 int WREG32 (int ,int) ;
 int be32_to_cpup (int ) ;
 int evergreen_rlc_start (struct radeon_device*) ;
 int hweight32 (int) ;
 int r600_rlc_stop (struct radeon_device*) ;

int evergreen_rlc_resume(struct radeon_device *rdev)
{
 u32 i;
 const __be32 *fw_data;

 if (!rdev->rlc_fw)
  return -EINVAL;

 r600_rlc_stop(rdev);

 WREG32(RLC_HB_CNTL, 0);

 if (rdev->flags & RADEON_IS_IGP) {
  if (rdev->family == CHIP_ARUBA) {
   u32 always_on_bitmap =
    3 | (3 << (16 * rdev->config.cayman.max_shader_engines));

   u32 tmp = (RREG32(CC_GC_SHADER_PIPE_CONFIG) & 0xffff0000) >> 16;
   tmp |= 0xffffffff << rdev->config.cayman.max_simds_per_se;
   tmp = hweight32(~tmp);
   if (tmp == rdev->config.cayman.max_simds_per_se) {
    WREG32(TN_RLC_LB_ALWAYS_ACTIVE_SIMD_MASK, always_on_bitmap);
    WREG32(TN_RLC_LB_PARAMS, 0x00601004);
    WREG32(TN_RLC_LB_INIT_SIMD_MASK, 0xffffffff);
    WREG32(TN_RLC_LB_CNTR_INIT, 0x00000000);
    WREG32(TN_RLC_LB_CNTR_MAX, 0x00002000);
   }
  } else {
   WREG32(RLC_HB_WPTR_LSB_ADDR, 0);
   WREG32(RLC_HB_WPTR_MSB_ADDR, 0);
  }
  WREG32(TN_RLC_SAVE_AND_RESTORE_BASE, rdev->rlc.save_restore_gpu_addr >> 8);
  WREG32(TN_RLC_CLEAR_STATE_RESTORE_BASE, rdev->rlc.clear_state_gpu_addr >> 8);
 } else {
  WREG32(RLC_HB_BASE, 0);
  WREG32(RLC_HB_RPTR, 0);
  WREG32(RLC_HB_WPTR, 0);
  WREG32(RLC_HB_WPTR_LSB_ADDR, 0);
  WREG32(RLC_HB_WPTR_MSB_ADDR, 0);
 }
 WREG32(RLC_MC_CNTL, 0);
 WREG32(RLC_UCODE_CNTL, 0);

 fw_data = (const __be32 *)rdev->rlc_fw->data;
 if (rdev->family >= CHIP_ARUBA) {
  for (i = 0; i < ARUBA_RLC_UCODE_SIZE; i++) {
   WREG32(RLC_UCODE_ADDR, i);
   WREG32(RLC_UCODE_DATA, be32_to_cpup(fw_data++));
  }
 } else if (rdev->family >= CHIP_CAYMAN) {
  for (i = 0; i < CAYMAN_RLC_UCODE_SIZE; i++) {
   WREG32(RLC_UCODE_ADDR, i);
   WREG32(RLC_UCODE_DATA, be32_to_cpup(fw_data++));
  }
 } else {
  for (i = 0; i < EVERGREEN_RLC_UCODE_SIZE; i++) {
   WREG32(RLC_UCODE_ADDR, i);
   WREG32(RLC_UCODE_DATA, be32_to_cpup(fw_data++));
  }
 }
 WREG32(RLC_UCODE_ADDR, 0);

 evergreen_rlc_start(rdev);

 return 0;
}
