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
struct TYPE_3__ {int save_restore_gpu_addr; int clear_state_gpu_addr; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_POWER_GATING_SRC ; 
 int RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK ; 
 int RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT ; 
 int RLC_AUTO_PG_CTRL__PG_AFTER_GRBM_REG_SAVE_THRESHOLD_MASK ; 
 int /*<<< orphan*/  RLC_PG_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmRLC_AUTO_PG_CTRL ; 
 int /*<<< orphan*/  mmRLC_CLEAR_STATE_RESTORE_BASE ; 
 int /*<<< orphan*/  mmRLC_SAVE_AND_RESTORE_BASE ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	u32 tmp;

	FUNC1(mmRLC_SAVE_AND_RESTORE_BASE, adev->gfx.rlc.save_restore_gpu_addr >> 8);
	FUNC2(RLC_PG_CNTL, GFX_POWER_GATING_SRC, 1);
	FUNC1(mmRLC_CLEAR_STATE_RESTORE_BASE, adev->gfx.rlc.clear_state_gpu_addr >> 8);

	tmp = FUNC0(mmRLC_AUTO_PG_CTRL);
	tmp &= ~RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK;
	tmp |= (0x700 << RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT);
	tmp &= ~RLC_AUTO_PG_CTRL__PG_AFTER_GRBM_REG_SAVE_THRESHOLD_MASK;
	FUNC1(mmRLC_AUTO_PG_CTRL, tmp);
}