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
struct drm_vblank_crtc {int /*<<< orphan*/  enabled; int /*<<< orphan*/  refcount; } ;
struct drm_device {int /*<<< orphan*/  vblank_time_lock; int /*<<< orphan*/  vbl_lock; struct drm_vblank_crtc* vblank; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev, unsigned int pipe)
{
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
	int ret = 0;

	FUNC3(&dev->vbl_lock);

	FUNC6(&dev->vblank_time_lock);

	if (!vblank->enabled) {
		/*
		 * Enable vblank irqs under vblank_time_lock protection.
		 * All vblank count & timestamp updates are held off
		 * until we are done reinitializing master counter and
		 * timestamps. Filtercode in drm_handle_vblank() will
		 * prevent double-accounting of same vblank interval.
		 */
		ret = FUNC2(dev, pipe);
		FUNC0("enabling vblank on crtc %u, ret: %d\n", pipe, ret);
		if (ret) {
			FUNC4(&vblank->refcount);
		} else {
			FUNC5(dev, pipe, 0);
			/* drm_update_vblank_count() includes a wmb so we just
			 * need to ensure that the compiler emits the write
			 * to mark the vblank as enabled after the call
			 * to drm_update_vblank_count().
			 */
			FUNC1(vblank->enabled, true);
		}
	}

	FUNC7(&dev->vblank_time_lock);

	return ret;
}