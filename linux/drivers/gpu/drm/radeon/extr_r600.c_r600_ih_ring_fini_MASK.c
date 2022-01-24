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
struct TYPE_2__ {int /*<<< orphan*/ * ring_obj; int /*<<< orphan*/ * ring; } ;
struct radeon_device {TYPE_1__ ih; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct radeon_device *rdev)
{
	int r;
	if (rdev->ih.ring_obj) {
		r = FUNC2(rdev->ih.ring_obj, false);
		if (FUNC0(r == 0)) {
			FUNC1(rdev->ih.ring_obj);
			FUNC3(rdev->ih.ring_obj);
			FUNC5(rdev->ih.ring_obj);
		}
		FUNC4(&rdev->ih.ring_obj);
		rdev->ih.ring = NULL;
		rdev->ih.ring_obj = NULL;
	}
}