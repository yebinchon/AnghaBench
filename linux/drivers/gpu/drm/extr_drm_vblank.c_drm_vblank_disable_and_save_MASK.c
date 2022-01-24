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
struct drm_vblank_crtc {int enabled; } ;
struct drm_device {int /*<<< orphan*/  vblank_time_lock; int /*<<< orphan*/  vbl_lock; struct drm_vblank_crtc* vblank; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct drm_device *dev, unsigned int pipe)
{
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
	unsigned long irqflags;

	FUNC1(&dev->vbl_lock);

	/* Prevent vblank irq processing while disabling vblank irqs,
	 * so no updates of timestamps or count can happen after we've
	 * disabled. Needed to prevent races in case of delayed irq's.
	 */
	FUNC3(&dev->vblank_time_lock, irqflags);

	/*
	 * Update vblank count and disable vblank interrupts only if the
	 * interrupts were enabled. This avoids calling the ->disable_vblank()
	 * operation in atomic context with the hardware potentially runtime
	 * suspended.
	 */
	if (!vblank->enabled)
		goto out;

	/*
	 * Update the count and timestamp to maintain the
	 * appearance that the counter has been ticking all along until
	 * this time. This makes the count account for the entire time
	 * between drm_crtc_vblank_on() and drm_crtc_vblank_off().
	 */
	FUNC2(dev, pipe, false);
	FUNC0(dev, pipe);
	vblank->enabled = false;

out:
	FUNC4(&dev->vblank_time_lock, irqflags);
}