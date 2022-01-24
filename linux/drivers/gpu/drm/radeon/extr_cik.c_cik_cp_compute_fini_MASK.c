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
struct radeon_device {TYPE_1__* ring; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mqd_obj; } ;

/* Variables and functions */
 int CAYMAN_RING_TYPE_CP1_INDEX ; 
 int CAYMAN_RING_TYPE_CP2_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct radeon_device *rdev)
{
	int i, idx, r;

	FUNC0(rdev, false);

	for (i = 0; i < 2; i++) {
		if (i == 0)
			idx = CAYMAN_RING_TYPE_CP1_INDEX;
		else
			idx = CAYMAN_RING_TYPE_CP2_INDEX;

		if (rdev->ring[idx].mqd_obj) {
			r = FUNC2(rdev->ring[idx].mqd_obj, false);
			if (FUNC6(r != 0))
				FUNC1(rdev->dev, "(%d) reserve MQD bo failed\n", r);

			FUNC3(rdev->ring[idx].mqd_obj);
			FUNC5(rdev->ring[idx].mqd_obj);

			FUNC4(&rdev->ring[idx].mqd_obj);
			rdev->ring[idx].mqd_obj = NULL;
		}
	}
}