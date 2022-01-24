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
struct TYPE_2__ {int /*<<< orphan*/  dc_lock; int /*<<< orphan*/  audio_lock; int /*<<< orphan*/ * freesync_module; int /*<<< orphan*/ * cgs_device; scalar_t__ dc; } ;
struct amdgpu_device {TYPE_1__ dm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev)
{
	FUNC1(adev);

	FUNC2(&adev->dm);

	/* DC Destroy TODO: Replace destroy DAL */
	if (adev->dm.dc)
		FUNC3(&adev->dm.dc);
	/*
	 * TODO: pageflip, vlank interrupt
	 *
	 * amdgpu_dm_irq_fini(adev);
	 */

	if (adev->dm.cgs_device) {
		FUNC0(adev->dm.cgs_device);
		adev->dm.cgs_device = NULL;
	}
	if (adev->dm.freesync_module) {
		FUNC4(adev->dm.freesync_module);
		adev->dm.freesync_module = NULL;
	}

	FUNC5(&adev->dm.audio_lock);
	FUNC5(&adev->dm.dc_lock);

	return;
}