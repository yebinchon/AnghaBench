#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {TYPE_2__* driver; } ;
struct drm_crtc {TYPE_1__* funcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_vblank_counter ) (struct drm_device*,unsigned int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_vblank_counter ) (struct drm_crtc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_crtc* FUNC2 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,unsigned int) ; 

__attribute__((used)) static u32 FUNC6(struct drm_device *dev, unsigned int pipe)
{
	if (FUNC1(dev, DRIVER_MODESET)) {
		struct drm_crtc *crtc = FUNC2(dev, pipe);

		if (FUNC0(!crtc))
			return 0;

		if (crtc->funcs->get_vblank_counter)
			return crtc->funcs->get_vblank_counter(crtc);
	}

	if (dev->driver->get_vblank_counter)
		return dev->driver->get_vblank_counter(dev, pipe);

	return FUNC3(dev, pipe);
}