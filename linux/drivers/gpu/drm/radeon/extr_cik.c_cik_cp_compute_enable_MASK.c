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
struct radeon_device {TYPE_1__* ring; int /*<<< orphan*/  srbm_mutex; } ;
struct TYPE_2__ {int ready; } ;

/* Variables and functions */
 size_t CAYMAN_RING_TYPE_CP1_INDEX ; 
 size_t CAYMAN_RING_TYPE_CP2_INDEX ; 
 int /*<<< orphan*/  CP_MEC_CNTL ; 
 int MEC_ME1_HALT ; 
 int MEC_ME2_HALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev, bool enable)
{
	if (enable)
		FUNC0(CP_MEC_CNTL, 0);
	else {
		/*
		 * To make hibernation reliable we need to clear compute ring
		 * configuration before halting the compute ring.
		 */
		FUNC2(&rdev->srbm_mutex);
		FUNC1(rdev,&rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX]);
		FUNC1(rdev,&rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX]);
		FUNC3(&rdev->srbm_mutex);

		FUNC0(CP_MEC_CNTL, (MEC_ME1_HALT | MEC_ME2_HALT));
		rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX].ready = false;
		rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX].ready = false;
	}
	FUNC4(50);
}