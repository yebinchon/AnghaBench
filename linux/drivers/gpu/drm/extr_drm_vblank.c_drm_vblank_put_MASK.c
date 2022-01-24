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
struct drm_vblank_crtc {int /*<<< orphan*/  disable_timer; int /*<<< orphan*/  refcount; } ;
struct drm_device {unsigned int num_crtcs; int /*<<< orphan*/  vblank_disable_immediate; struct drm_vblank_crtc* vblank; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int drm_vblank_offdelay ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev, unsigned int pipe)
{
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

	if (FUNC0(pipe >= dev->num_crtcs))
		return;

	if (FUNC0(FUNC2(&vblank->refcount) == 0))
		return;

	/* Last user schedules interrupt disable */
	if (FUNC1(&vblank->refcount)) {
		if (drm_vblank_offdelay == 0)
			return;
		else if (drm_vblank_offdelay < 0)
			FUNC4(&vblank->disable_timer);
		else if (!dev->vblank_disable_immediate)
			FUNC3(&vblank->disable_timer,
				  jiffies + ((drm_vblank_offdelay * HZ)/1000));
	}
}