#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int min_temp; int max_temp; } ;
struct TYPE_5__ {TYPE_1__ thermal; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_THERMAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DIG_THERM_INTH_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DIG_THERM_INTL_MASK ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev,
					      int min_temp, int max_temp)
{
	int low_temp = 0 * 1000;
	int high_temp = 255 * 1000;

	if (low_temp < min_temp)
		low_temp = min_temp;
	if (high_temp > max_temp)
		high_temp = max_temp;
	if (high_temp < low_temp) {
		FUNC2("invalid thermal range: %d - %d\n", low_temp, high_temp);
		return -EINVAL;
	}

	FUNC3(CG_THERMAL_INT, FUNC0(49 + (high_temp / 1000)), ~DIG_THERM_INTH_MASK);
	FUNC3(CG_THERMAL_INT, FUNC1(49 + (low_temp / 1000)), ~DIG_THERM_INTL_MASK);

	rdev->pm.dpm.thermal.min_temp = low_temp;
	rdev->pm.dpm.thermal.max_temp = high_temp;

	return 0;
}