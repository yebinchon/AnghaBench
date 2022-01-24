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
struct timer_list {int dummy; } ;
struct drm_vblank_crtc {unsigned int pipe; scalar_t__ enabled; int /*<<< orphan*/  refcount; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  vbl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disable_timer ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,unsigned int) ; 
 struct drm_vblank_crtc* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_vblank_crtc* vblank ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct drm_vblank_crtc *vblank = FUNC3(vblank, t, disable_timer);
	struct drm_device *dev = vblank->dev;
	unsigned int pipe = vblank->pipe;
	unsigned long irqflags;

	FUNC4(&dev->vbl_lock, irqflags);
	if (FUNC1(&vblank->refcount) == 0 && vblank->enabled) {
		FUNC0("disabling vblank on crtc %u\n", pipe);
		FUNC2(dev, pipe);
	}
	FUNC5(&dev->vbl_lock, irqflags);
}