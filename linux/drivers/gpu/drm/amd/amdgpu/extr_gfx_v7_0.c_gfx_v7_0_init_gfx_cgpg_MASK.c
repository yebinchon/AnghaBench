#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int clear_state_size; int* reg_list; int reg_list_size; int save_restore_gpu_addr; int cp_table_gpu_addr; int /*<<< orphan*/  clear_state_gpu_addr; scalar_t__ cs_data; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT_MASK ; 
 int CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT ; 
 int RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK ; 
 int RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT ; 
 int RLC_CLEAR_STATE_DESCRIPTOR_OFFSET ; 
 int RLC_PG_CNTL__GFX_POWER_GATING_SRC_MASK ; 
 int RLC_SAVE_AND_RESTORE_STARTING_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCP_RB_WPTR_POLL_CNTL ; 
 int /*<<< orphan*/  mmRLC_AUTO_PG_CTRL ; 
 int /*<<< orphan*/  mmRLC_GPM_SCRATCH_ADDR ; 
 int /*<<< orphan*/  mmRLC_GPM_SCRATCH_DATA ; 
 int /*<<< orphan*/  mmRLC_JUMP_TABLE_RESTORE ; 
 int /*<<< orphan*/  mmRLC_PG_CNTL ; 
 int /*<<< orphan*/  mmRLC_PG_DELAY ; 
 int /*<<< orphan*/  mmRLC_PG_DELAY_2 ; 
 int /*<<< orphan*/  mmRLC_SAVE_AND_RESTORE_BASE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	u32 data, orig;
	u32 i;

	if (adev->gfx.rlc.cs_data) {
		FUNC1(mmRLC_GPM_SCRATCH_ADDR, RLC_CLEAR_STATE_DESCRIPTOR_OFFSET);
		FUNC1(mmRLC_GPM_SCRATCH_DATA, FUNC3(adev->gfx.rlc.clear_state_gpu_addr));
		FUNC1(mmRLC_GPM_SCRATCH_DATA, FUNC2(adev->gfx.rlc.clear_state_gpu_addr));
		FUNC1(mmRLC_GPM_SCRATCH_DATA, adev->gfx.rlc.clear_state_size);
	} else {
		FUNC1(mmRLC_GPM_SCRATCH_ADDR, RLC_CLEAR_STATE_DESCRIPTOR_OFFSET);
		for (i = 0; i < 3; i++)
			FUNC1(mmRLC_GPM_SCRATCH_DATA, 0);
	}
	if (adev->gfx.rlc.reg_list) {
		FUNC1(mmRLC_GPM_SCRATCH_ADDR, RLC_SAVE_AND_RESTORE_STARTING_OFFSET);
		for (i = 0; i < adev->gfx.rlc.reg_list_size; i++)
			FUNC1(mmRLC_GPM_SCRATCH_DATA, adev->gfx.rlc.reg_list[i]);
	}

	orig = data = FUNC0(mmRLC_PG_CNTL);
	data |= RLC_PG_CNTL__GFX_POWER_GATING_SRC_MASK;
	if (orig != data)
		FUNC1(mmRLC_PG_CNTL, data);

	FUNC1(mmRLC_SAVE_AND_RESTORE_BASE, adev->gfx.rlc.save_restore_gpu_addr >> 8);
	FUNC1(mmRLC_JUMP_TABLE_RESTORE, adev->gfx.rlc.cp_table_gpu_addr >> 8);

	data = FUNC0(mmCP_RB_WPTR_POLL_CNTL);
	data &= ~CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT_MASK;
	data |= (0x60 << CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT);
	FUNC1(mmCP_RB_WPTR_POLL_CNTL, data);

	data = 0x10101010;
	FUNC1(mmRLC_PG_DELAY, data);

	data = FUNC0(mmRLC_PG_DELAY_2);
	data &= ~0xff;
	data |= 0x3;
	FUNC1(mmRLC_PG_DELAY_2, data);

	data = FUNC0(mmRLC_AUTO_PG_CTRL);
	data &= ~RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK;
	data |= (0x700 << RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT);
	FUNC1(mmRLC_AUTO_PG_CTRL, data);

}