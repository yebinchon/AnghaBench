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
struct TYPE_2__ {int /*<<< orphan*/  vddc; } ;
struct rv6xx_ps {TYPE_1__ low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SET_VOLTAGE_TYPE_ASIC_VDDC ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 struct rv6xx_ps* FUNC3 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
						struct radeon_ps *new_ps,
						bool enable)
{
	struct rv6xx_ps *new_state = FUNC3(new_ps);

	if (enable)
		FUNC1(rdev,
					new_state->low.vddc,
					SET_VOLTAGE_TYPE_ASIC_VDDC);
	else
		FUNC0(rdev,
							       FUNC2(rdev));
}