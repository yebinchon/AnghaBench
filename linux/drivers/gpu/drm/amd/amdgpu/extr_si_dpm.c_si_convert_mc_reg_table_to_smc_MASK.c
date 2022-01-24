#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct si_ps {int performance_level_count; int /*<<< orphan*/ * performance_levels; } ;
struct amdgpu_ps {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ SMC_SIslands_MCRegisters ;

/* Variables and functions */
 int SISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct si_ps* FUNC1 (struct amdgpu_ps*) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
					   struct amdgpu_ps *amdgpu_state,
					   SMC_SIslands_MCRegisters *mc_reg_table)
{
	struct si_ps *state = FUNC1(amdgpu_state);
	int i;

	for (i = 0; i < state->performance_level_count; i++) {
		FUNC0(adev,
						     &state->performance_levels[i],
						     &mc_reg_table->data[SISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT + i]);
	}
}