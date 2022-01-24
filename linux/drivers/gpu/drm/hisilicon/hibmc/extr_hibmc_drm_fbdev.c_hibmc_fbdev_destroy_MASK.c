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
struct hibmc_framebuffer {int /*<<< orphan*/  fb; } ;
struct drm_fb_helper {int dummy; } ;
struct hibmc_fbdev {struct drm_fb_helper helper; struct hibmc_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct hibmc_fbdev *fbdev)
{
	struct hibmc_framebuffer *gfb = fbdev->fb;
	struct drm_fb_helper *fbh = &fbdev->helper;

	FUNC1(fbh);

	FUNC0(fbh);

	if (gfb)
		FUNC2(&gfb->fb);
}