
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int save_restore_gpu_addr; int clear_state_gpu_addr; } ;
struct radeon_device {TYPE_1__ rlc; } ;


 int GFX_PG_SRC ;
 int GRBM_REG_SGIT (int) ;
 int GRBM_REG_SGIT_MASK ;
 int PG_AFTER_GRBM_REG_ST_MASK ;
 int RLC_AUTO_PG_CTRL ;
 int RLC_CLEAR_STATE_RESTORE_BASE ;
 int RLC_PG_CNTL ;
 int RLC_SAVE_AND_RESTORE_BASE ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void si_init_gfx_cgpg(struct radeon_device *rdev)
{
 u32 tmp;

 WREG32(RLC_SAVE_AND_RESTORE_BASE, rdev->rlc.save_restore_gpu_addr >> 8);

 tmp = RREG32(RLC_PG_CNTL);
 tmp |= GFX_PG_SRC;
 WREG32(RLC_PG_CNTL, tmp);

 WREG32(RLC_CLEAR_STATE_RESTORE_BASE, rdev->rlc.clear_state_gpu_addr >> 8);

 tmp = RREG32(RLC_AUTO_PG_CTRL);

 tmp &= ~GRBM_REG_SGIT_MASK;
 tmp |= GRBM_REG_SGIT(0x700);
 tmp &= ~PG_AFTER_GRBM_REG_ST_MASK;
 WREG32(RLC_AUTO_PG_CTRL, tmp);
}
