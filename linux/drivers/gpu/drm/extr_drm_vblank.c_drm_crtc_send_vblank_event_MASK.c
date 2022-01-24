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
struct drm_pending_vblank_event {unsigned int pipe; } ;
struct drm_device {scalar_t__ num_crtcs; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct drm_crtc*) ; 
 scalar_t__ FUNC1 (struct drm_device*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_pending_vblank_event*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC4(struct drm_crtc *crtc,
				struct drm_pending_vblank_event *e)
{
	struct drm_device *dev = crtc->dev;
	u64 seq;
	unsigned int pipe = FUNC0(crtc);
	ktime_t now;

	if (dev->num_crtcs > 0) {
		seq = FUNC1(dev, pipe, &now);
	} else {
		seq = 0;

		now = FUNC2();
	}
	e->pipe = pipe;
	FUNC3(dev, e, seq, now);
}