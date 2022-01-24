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
struct drm_fb_helper {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct drm_fb_helper*,int) ; 
 int /*<<< orphan*/  drm_fbdev_emulation ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct drm_fb_helper *fb_helper, int bpp_sel)
{
	int ret;

	if (!drm_fbdev_emulation)
		return 0;

	FUNC1(&fb_helper->lock);
	ret = FUNC0(fb_helper, bpp_sel);

	return ret;
}