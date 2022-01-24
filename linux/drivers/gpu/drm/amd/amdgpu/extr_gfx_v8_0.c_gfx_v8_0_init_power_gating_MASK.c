#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_PROPAGATE_DELAY ; 
 int /*<<< orphan*/  CP_RB_WPTR_POLL_CNTL ; 
 int /*<<< orphan*/  GRBM_REG_SAVE_GFX_IDLE_THRESHOLD ; 
 int /*<<< orphan*/  IDLE_POLL_COUNT ; 
 int /*<<< orphan*/  MEM_SLEEP_DELAY ; 
 int /*<<< orphan*/  POWER_DOWN_DELAY ; 
 int /*<<< orphan*/  POWER_UP_DELAY ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RLC_AUTO_PG_CTRL ; 
 int /*<<< orphan*/  RLC_PG_DELAY ; 
 int /*<<< orphan*/  RLC_PG_DELAY_2 ; 
 int /*<<< orphan*/  SERDES_CMD_DELAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmRLC_PG_DELAY ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	uint32_t data;

	FUNC2(CP_RB_WPTR_POLL_CNTL, IDLE_POLL_COUNT, 0x60);

	data = FUNC0(0, RLC_PG_DELAY, POWER_UP_DELAY, 0x10);
	data = FUNC0(data, RLC_PG_DELAY, POWER_DOWN_DELAY, 0x10);
	data = FUNC0(data, RLC_PG_DELAY, CMD_PROPAGATE_DELAY, 0x10);
	data = FUNC0(data, RLC_PG_DELAY, MEM_SLEEP_DELAY, 0x10);
	FUNC1(mmRLC_PG_DELAY, data);

	FUNC2(RLC_PG_DELAY_2, SERDES_CMD_DELAY, 0x3);
	FUNC2(RLC_AUTO_PG_CTRL, GRBM_REG_SAVE_GFX_IDLE_THRESHOLD, 0x55f0);

}