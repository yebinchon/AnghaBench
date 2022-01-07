
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int save_restore_gpu_addr; int clear_state_gpu_addr; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int GFX_POWER_GATING_SRC ;
 int RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK ;
 int RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT ;
 int RLC_AUTO_PG_CTRL__PG_AFTER_GRBM_REG_SAVE_THRESHOLD_MASK ;
 int RLC_PG_CNTL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int WREG32_FIELD (int ,int ,int) ;
 int mmRLC_AUTO_PG_CTRL ;
 int mmRLC_CLEAR_STATE_RESTORE_BASE ;
 int mmRLC_SAVE_AND_RESTORE_BASE ;

__attribute__((used)) static void gfx_v6_0_init_gfx_cgpg(struct amdgpu_device *adev)
{
 u32 tmp;

 WREG32(mmRLC_SAVE_AND_RESTORE_BASE, adev->gfx.rlc.save_restore_gpu_addr >> 8);
 WREG32_FIELD(RLC_PG_CNTL, GFX_POWER_GATING_SRC, 1);
 WREG32(mmRLC_CLEAR_STATE_RESTORE_BASE, adev->gfx.rlc.clear_state_gpu_addr >> 8);

 tmp = RREG32(mmRLC_AUTO_PG_CTRL);
 tmp &= ~RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK;
 tmp |= (0x700 << RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT);
 tmp &= ~RLC_AUTO_PG_CTRL__PG_AFTER_GRBM_REG_SAVE_THRESHOLD_MASK;
 WREG32(mmRLC_AUTO_PG_CTRL, tmp);
}
