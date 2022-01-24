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
struct TYPE_2__ {int /*<<< orphan*/ * wb_obj; int /*<<< orphan*/ * wb; } ;
struct radeon_device {TYPE_1__ wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 

void FUNC6(struct radeon_device *rdev)
{
	FUNC5(rdev);
	if (rdev->wb.wb_obj) {
		if (!FUNC1(rdev->wb.wb_obj, false)) {
			FUNC0(rdev->wb.wb_obj);
			FUNC2(rdev->wb.wb_obj);
			FUNC4(rdev->wb.wb_obj);
		}
		FUNC3(&rdev->wb.wb_obj);
		rdev->wb.wb = NULL;
		rdev->wb.wb_obj = NULL;
	}
}