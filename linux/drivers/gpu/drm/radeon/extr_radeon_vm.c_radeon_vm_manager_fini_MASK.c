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
struct TYPE_2__ {int enabled; int /*<<< orphan*/ * active; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;

/* Variables and functions */
 int RADEON_NUM_VM ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct radeon_device *rdev)
{
	int i;

	if (!rdev->vm_manager.enabled)
		return;

	for (i = 0; i < RADEON_NUM_VM; ++i)
		FUNC1(&rdev->vm_manager.active[i]);
	FUNC0(rdev);
	rdev->vm_manager.enabled = false;
}