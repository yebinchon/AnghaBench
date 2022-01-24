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
typedef  int /*<<< orphan*/  u64 ;
struct drm_device {int /*<<< orphan*/  vblank_time_lock; TYPE_1__* driver; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  get_vblank_timestamp; } ;

/* Variables and functions */
 int DRM_UT_VBL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int FUNC1 (struct drm_crtc*) ; 
 int drm_debug ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

u64 FUNC6(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	unsigned int pipe = FUNC1(crtc);
	u64 vblank;
	unsigned long flags;

	FUNC0(drm_debug & DRM_UT_VBL && !dev->driver->get_vblank_timestamp,
		  "This function requires support for accurate vblank timestamps.");

	FUNC4(&dev->vblank_time_lock, flags);

	FUNC2(dev, pipe, false);
	vblank = FUNC3(dev, pipe);

	FUNC5(&dev->vblank_time_lock, flags);

	return vblank;
}