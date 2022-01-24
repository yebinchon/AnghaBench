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
typedef  scalar_t__ u64 ;
struct drm_vblank_crtc {int /*<<< orphan*/  queue; } ;
struct drm_device {unsigned int num_crtcs; struct drm_vblank_crtc* vblank; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*,unsigned int,...) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_device*,unsigned int) ; 
 int FUNC3 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC7(struct drm_device *dev, unsigned int pipe)
{
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
	int ret;
	u64 last;

	if (FUNC1(pipe >= dev->num_crtcs))
		return;

	ret = FUNC3(dev, pipe);
	if (FUNC0(ret, "vblank not available on crtc %i, ret=%i\n", pipe, ret))
		return;

	last = FUNC2(dev, pipe);

	ret = FUNC6(vblank->queue,
				 last != FUNC2(dev, pipe),
				 FUNC5(100));

	FUNC0(ret == 0, "vblank wait timed out on crtc %i\n", pipe);

	FUNC4(dev, pipe);
}