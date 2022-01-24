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
struct rv7xx_ps {int /*<<< orphan*/  high; int /*<<< orphan*/  medium; int /*<<< orphan*/  low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ SMC_Evergreen_MCRegisters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rv7xx_ps* FUNC1 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
						struct radeon_ps *radeon_state,
						SMC_Evergreen_MCRegisters *mc_reg_table)
{
	struct rv7xx_ps *state = FUNC1(radeon_state);

	FUNC0(rdev,
						  &state->low,
						  &mc_reg_table->data[2]);
	FUNC0(rdev,
						  &state->medium,
						  &mc_reg_table->data[3]);
	FUNC0(rdev,
						  &state->high,
						  &mc_reg_table->data[4]);
}