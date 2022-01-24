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
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ni_ps {int performance_level_count; int /*<<< orphan*/ * performance_levels; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ SMC_SIslands_MCRegisters ;

/* Variables and functions */
 int SISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT ; 
 struct ni_ps* FUNC0 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
					   struct radeon_ps *radeon_state,
					   SMC_SIslands_MCRegisters *mc_reg_table)
{
	struct ni_ps *state = FUNC0(radeon_state);
	int i;

	for (i = 0; i < state->performance_level_count; i++) {
		FUNC1(rdev,
						     &state->performance_levels[i],
						     &mc_reg_table->data[SISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT + i]);
	}
}