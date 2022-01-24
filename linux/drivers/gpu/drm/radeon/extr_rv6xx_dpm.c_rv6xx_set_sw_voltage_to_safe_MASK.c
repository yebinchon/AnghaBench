#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ vddc; } ;
struct rv6xx_ps {TYPE_1__ low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_CTXSW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_GPIO_INDEX_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rv6xx_ps* FUNC2 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
					 struct radeon_ps *new_ps,
					 struct radeon_ps *old_ps)
{
	struct rv6xx_ps *new_state = FUNC2(new_ps);
	struct rv6xx_ps *old_state = FUNC2(old_ps);
	u16 safe_voltage;

	safe_voltage = (new_state->low.vddc >= old_state->low.vddc) ?
		new_state->low.vddc : old_state->low.vddc;

	FUNC3(rdev, R600_POWER_LEVEL_CTXSW,
					     safe_voltage);

	FUNC1(GENERAL_PWRMGT, FUNC0(R600_POWER_LEVEL_CTXSW),
		 ~SW_GPIO_INDEX_MASK);
}