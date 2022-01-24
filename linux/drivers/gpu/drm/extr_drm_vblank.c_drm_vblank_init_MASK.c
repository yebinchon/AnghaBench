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
struct drm_vblank_crtc {unsigned int pipe; int /*<<< orphan*/  seqlock; int /*<<< orphan*/  disable_timer; int /*<<< orphan*/  queue; struct drm_device* dev; } ;
struct drm_device {unsigned int num_crtcs; int vblank_disable_immediate; TYPE_1__* driver; struct drm_vblank_crtc* vblank; int /*<<< orphan*/  vblank_time_lock; int /*<<< orphan*/  vbl_lock; } ;
struct TYPE_2__ {scalar_t__ get_vblank_timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct drm_vblank_crtc* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vblank_disable_fn ; 

int FUNC6(struct drm_device *dev, unsigned int num_crtcs)
{
	int ret = -ENOMEM;
	unsigned int i;

	FUNC4(&dev->vbl_lock);
	FUNC4(&dev->vblank_time_lock);

	dev->num_crtcs = num_crtcs;

	dev->vblank = FUNC2(num_crtcs, sizeof(*dev->vblank), GFP_KERNEL);
	if (!dev->vblank)
		goto err;

	for (i = 0; i < num_crtcs; i++) {
		struct drm_vblank_crtc *vblank = &dev->vblank[i];

		vblank->dev = dev;
		vblank->pipe = i;
		FUNC1(&vblank->queue);
		FUNC5(&vblank->disable_timer, vblank_disable_fn, 0);
		FUNC3(&vblank->seqlock);
	}

	FUNC0("Supports vblank timestamp caching Rev 2 (21.10.2013).\n");

	/* Driver specific high-precision vblank timestamping supported? */
	if (dev->driver->get_vblank_timestamp)
		FUNC0("Driver supports precise vblank timestamp query.\n");
	else
		FUNC0("No driver support for vblank timestamp query.\n");

	/* Must have precise timestamping for reliable vblank instant disable */
	if (dev->vblank_disable_immediate && !dev->driver->get_vblank_timestamp) {
		dev->vblank_disable_immediate = false;
		FUNC0("Setting vblank_disable_immediate to false because "
			 "get_vblank_timestamp == NULL\n");
	}

	return 0;

err:
	dev->num_crtcs = 0;
	return ret;
}