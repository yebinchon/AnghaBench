#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct drm_device {int /*<<< orphan*/  vblank_time_lock; } ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 int DRM_TIMESTAMP_MAXRETRIES ; 
 scalar_t__ FUNC0 (struct drm_device*,unsigned int) ; 
 int FUNC1 (struct drm_device*,unsigned int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,unsigned int,int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev, unsigned int pipe)
{
	u32 cur_vblank;
	bool rc;
	ktime_t t_vblank;
	int count = DRM_TIMESTAMP_MAXRETRIES;

	FUNC2(&dev->vblank_time_lock);

	/*
	 * sample the current counter to avoid random jumps
	 * when drm_vblank_enable() applies the diff
	 */
	do {
		cur_vblank = FUNC0(dev, pipe);
		rc = FUNC1(dev, pipe, &t_vblank, false);
	} while (cur_vblank != FUNC0(dev, pipe) && --count > 0);

	/*
	 * Only reinitialize corresponding vblank timestamp if high-precision query
	 * available and didn't fail. Otherwise reinitialize delayed at next vblank
	 * interrupt and assign 0 for now, to mark the vblanktimestamp as invalid.
	 */
	if (!rc)
		t_vblank = 0;

	/*
	 * +1 to make sure user will never see the same
	 * vblank counter value before and after a modeset
	 */
	FUNC4(dev, pipe, 1, t_vblank, cur_vblank);

	FUNC3(&dev->vblank_time_lock);
}