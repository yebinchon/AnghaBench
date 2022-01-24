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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ vddc; } ;
struct si_ulv_param {TYPE_1__ pl; scalar_t__ supported; } ;
struct TYPE_4__ {int /*<<< orphan*/  ULVState; } ;
struct si_power_info {int state_table_start; int /*<<< orphan*/  sram_end; TYPE_2__ smc_statetable; struct si_ulv_param ulv; } ;
struct amdgpu_device {int dummy; } ;
typedef  int /*<<< orphan*/  SISLANDS_SMC_SWSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  SISLANDS_SMC_STATETABLE ; 
 int /*<<< orphan*/  ULVState ; 
 int FUNC0 (struct amdgpu_device*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct si_power_info* FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	struct si_power_info *si_pi = FUNC3(adev);
	struct si_ulv_param *ulv = &si_pi->ulv;
	int ret = 0;

	if (ulv->supported && ulv->pl.vddc) {
		u32 address = si_pi->state_table_start +
			FUNC2(SISLANDS_SMC_STATETABLE, ULVState);
		SISLANDS_SMC_SWSTATE *smc_state = &si_pi->smc_statetable.ULVState;
		u32 state_size = sizeof(SISLANDS_SMC_SWSTATE);

		FUNC1(smc_state, 0, state_size);

		ret = FUNC4(adev, smc_state);
		if (!ret)
			ret = FUNC0(adev, address, (u8 *)smc_state,
							  state_size, si_pi->sram_end);
	}

	return ret;
}