
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int save_restore_gpu_addr; int clear_state_gpu_addr; } ;
struct radeon_device {int pg_flags; TYPE_1__ rlc; } ;


 int RADEON_PG_SUPPORT_GFX_PG ;
 int RADEON_PG_SUPPORT_SDMA ;
 int RLC_CLEAR_STATE_RESTORE_BASE ;
 int RLC_SAVE_AND_RESTORE_BASE ;
 int WREG32 (int ,int) ;
 int si_enable_dma_pg (struct radeon_device*,int) ;
 int si_enable_gfx_cgpg (struct radeon_device*,int) ;
 int si_init_ao_cu_mask (struct radeon_device*) ;
 int si_init_dma_pg (struct radeon_device*) ;
 int si_init_gfx_cgpg (struct radeon_device*) ;

__attribute__((used)) static void si_init_pg(struct radeon_device *rdev)
{
 if (rdev->pg_flags) {
  if (rdev->pg_flags & RADEON_PG_SUPPORT_SDMA) {
   si_init_dma_pg(rdev);
  }
  si_init_ao_cu_mask(rdev);
  if (rdev->pg_flags & RADEON_PG_SUPPORT_GFX_PG) {
   si_init_gfx_cgpg(rdev);
  } else {
   WREG32(RLC_SAVE_AND_RESTORE_BASE, rdev->rlc.save_restore_gpu_addr >> 8);
   WREG32(RLC_CLEAR_STATE_RESTORE_BASE, rdev->rlc.clear_state_gpu_addr >> 8);
  }
  si_enable_dma_pg(rdev, 1);
  si_enable_gfx_cgpg(rdev, 1);
 } else {
  WREG32(RLC_SAVE_AND_RESTORE_BASE, rdev->rlc.save_restore_gpu_addr >> 8);
  WREG32(RLC_CLEAR_STATE_RESTORE_BASE, rdev->rlc.clear_state_gpu_addr >> 8);
 }
}
