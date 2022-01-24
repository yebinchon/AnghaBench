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
struct drm_vblank_crtc {int /*<<< orphan*/  disable_timer; int /*<<< orphan*/  refcount; int /*<<< orphan*/  queue; int /*<<< orphan*/  enabled; } ;
struct drm_device {unsigned int num_crtcs; int /*<<< orphan*/  event_lock; scalar_t__ vblank_disable_immediate; int /*<<< orphan*/  vblank_time_lock; struct drm_vblank_crtc* vblank; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,unsigned int,int) ; 
 scalar_t__ drm_vblank_offdelay ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

bool FUNC11(struct drm_device *dev, unsigned int pipe)
{
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
	unsigned long irqflags;
	bool disable_irq;

	if (FUNC1(!dev->num_crtcs))
		return false;

	if (FUNC0(pipe >= dev->num_crtcs))
		return false;

	FUNC6(&dev->event_lock, irqflags);

	/* Need timestamp lock to prevent concurrent execution with
	 * vblank enable/disable, as this would cause inconsistent
	 * or corrupted timestamps and vblank counts.
	 */
	FUNC5(&dev->vblank_time_lock);

	/* Vblank irq handling disabled. Nothing to do. */
	if (!vblank->enabled) {
		FUNC7(&dev->vblank_time_lock);
		FUNC8(&dev->event_lock, irqflags);
		return false;
	}

	FUNC4(dev, pipe, true);

	FUNC7(&dev->vblank_time_lock);

	FUNC10(&vblank->queue);

	/* With instant-off, we defer disabling the interrupt until after
	 * we finish processing the following vblank after all events have
	 * been signaled. The disable has to be last (after
	 * drm_handle_vblank_events) so that the timestamp is always accurate.
	 */
	disable_irq = (dev->vblank_disable_immediate &&
		       drm_vblank_offdelay > 0 &&
		       !FUNC2(&vblank->refcount));

	FUNC3(dev, pipe);

	FUNC8(&dev->event_lock, irqflags);

	if (disable_irq)
		FUNC9(&vblank->disable_timer);

	return true;
}