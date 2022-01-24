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
struct drm_vblank_crtc {int /*<<< orphan*/  disable_timer; int /*<<< orphan*/  enabled; } ;
struct drm_device {unsigned int num_crtcs; struct drm_vblank_crtc* vblank; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_vblank_crtc*) ; 

void FUNC5(struct drm_device *dev)
{
	unsigned int pipe;

	/* Bail if the driver didn't call drm_vblank_init() */
	if (dev->num_crtcs == 0)
		return;

	for (pipe = 0; pipe < dev->num_crtcs; pipe++) {
		struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

		FUNC1(FUNC0(vblank->enabled) &&
			FUNC3(dev, DRIVER_MODESET));

		FUNC2(&vblank->disable_timer);
	}

	FUNC4(dev->vblank);

	dev->num_crtcs = 0;
}