
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int clear_state_size; int* reg_list; int reg_list_size; int save_restore_gpu_addr; int cp_table_gpu_addr; int clear_state_gpu_addr; scalar_t__ cs_data; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT_MASK ;
 int CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT ;
 int RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK ;
 int RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT ;
 int RLC_CLEAR_STATE_DESCRIPTOR_OFFSET ;
 int RLC_PG_CNTL__GFX_POWER_GATING_SRC_MASK ;
 int RLC_SAVE_AND_RESTORE_STARTING_OFFSET ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int lower_32_bits (int ) ;
 int mmCP_RB_WPTR_POLL_CNTL ;
 int mmRLC_AUTO_PG_CTRL ;
 int mmRLC_GPM_SCRATCH_ADDR ;
 int mmRLC_GPM_SCRATCH_DATA ;
 int mmRLC_JUMP_TABLE_RESTORE ;
 int mmRLC_PG_CNTL ;
 int mmRLC_PG_DELAY ;
 int mmRLC_PG_DELAY_2 ;
 int mmRLC_SAVE_AND_RESTORE_BASE ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void gfx_v7_0_init_gfx_cgpg(struct amdgpu_device *adev)
{
 u32 data, orig;
 u32 i;

 if (adev->gfx.rlc.cs_data) {
  WREG32(mmRLC_GPM_SCRATCH_ADDR, RLC_CLEAR_STATE_DESCRIPTOR_OFFSET);
  WREG32(mmRLC_GPM_SCRATCH_DATA, upper_32_bits(adev->gfx.rlc.clear_state_gpu_addr));
  WREG32(mmRLC_GPM_SCRATCH_DATA, lower_32_bits(adev->gfx.rlc.clear_state_gpu_addr));
  WREG32(mmRLC_GPM_SCRATCH_DATA, adev->gfx.rlc.clear_state_size);
 } else {
  WREG32(mmRLC_GPM_SCRATCH_ADDR, RLC_CLEAR_STATE_DESCRIPTOR_OFFSET);
  for (i = 0; i < 3; i++)
   WREG32(mmRLC_GPM_SCRATCH_DATA, 0);
 }
 if (adev->gfx.rlc.reg_list) {
  WREG32(mmRLC_GPM_SCRATCH_ADDR, RLC_SAVE_AND_RESTORE_STARTING_OFFSET);
  for (i = 0; i < adev->gfx.rlc.reg_list_size; i++)
   WREG32(mmRLC_GPM_SCRATCH_DATA, adev->gfx.rlc.reg_list[i]);
 }

 orig = data = RREG32(mmRLC_PG_CNTL);
 data |= RLC_PG_CNTL__GFX_POWER_GATING_SRC_MASK;
 if (orig != data)
  WREG32(mmRLC_PG_CNTL, data);

 WREG32(mmRLC_SAVE_AND_RESTORE_BASE, adev->gfx.rlc.save_restore_gpu_addr >> 8);
 WREG32(mmRLC_JUMP_TABLE_RESTORE, adev->gfx.rlc.cp_table_gpu_addr >> 8);

 data = RREG32(mmCP_RB_WPTR_POLL_CNTL);
 data &= ~CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT_MASK;
 data |= (0x60 << CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT);
 WREG32(mmCP_RB_WPTR_POLL_CNTL, data);

 data = 0x10101010;
 WREG32(mmRLC_PG_DELAY, data);

 data = RREG32(mmRLC_PG_DELAY_2);
 data &= ~0xff;
 data |= 0x3;
 WREG32(mmRLC_PG_DELAY_2, data);

 data = RREG32(mmRLC_AUTO_PG_CTRL);
 data &= ~RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK;
 data |= (0x700 << RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT);
 WREG32(mmRLC_AUTO_PG_CTRL, data);

}
