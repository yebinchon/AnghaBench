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
struct drm_framebuffer {int /*<<< orphan*/  filp_head; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct drm_framebuffer*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_framebuffer*) ; 
 int FUNC5 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct drm_framebuffer *fb)
{
	struct drm_device *dev;

	if (!fb)
		return;

	dev = fb->dev;

	FUNC1(!FUNC7(&fb->filp_head));

	/*
	 * drm ABI mandates that we remove any deleted framebuffers from active
	 * useage. But since most sane clients only remove framebuffers they no
	 * longer need, try to optimize this away.
	 *
	 * Since we're holding a reference ourselves, observing a refcount of 1
	 * means that we're the last holder and can skip it. Also, the refcount
	 * can never increase from 1 again, so we don't need any barriers or
	 * locks.
	 *
	 * Note that userspace could try to race with use and instate a new
	 * usage _after_ we've cleared all current ones. End result will be an
	 * in-use fb with fb-id == 0. Userspace is allowed to shoot its own foot
	 * in this manner.
	 */
	if (FUNC5(fb) > 1) {
		if (FUNC3(dev)) {
			int ret = FUNC2(fb);
			FUNC0(ret, "atomic remove_fb failed with %i\n", ret);
		} else
			FUNC6(fb);
	}

	FUNC4(fb);
}