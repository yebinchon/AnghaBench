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
struct TYPE_4__ {int /*<<< orphan*/  int_thermal_type; } ;
struct TYPE_3__ {scalar_t__ installed; } ;
struct radeon_device {TYPE_2__ pm; TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  R600_TEMP_RANGE_MAX ; 
 int /*<<< orphan*/  R600_TEMP_RANGE_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 
 int FUNC6 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct radeon_device *rdev)
{
	int ret = 0;

	if (rdev->irq.installed &&
	    FUNC7(rdev->pm.int_thermal_type)) {
		ret = FUNC6(rdev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
		if (ret) {
			FUNC0("kv_set_thermal_temperature_range failed\n");
			return ret;
		}
		FUNC5(rdev, true);
	}

	/* powerdown unused blocks for now */
	FUNC1(rdev, true);
	FUNC2(rdev, true);
	FUNC4(rdev, true);
	FUNC3(rdev, true);

	return ret;
}