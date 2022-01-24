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
struct drm_framebuffer {int /*<<< orphan*/ ** obj; } ;
struct radeon_fbdev {int /*<<< orphan*/  helper; struct drm_framebuffer fb; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, struct radeon_fbdev *rfbdev)
{
	struct drm_framebuffer *fb = &rfbdev->fb;

	FUNC1(&rfbdev->helper);

	if (fb->obj[0]) {
		FUNC4(fb->obj[0]);
		fb->obj[0] = NULL;
		FUNC3(fb);
		FUNC2(fb);
	}
	FUNC0(&rfbdev->helper);

	return 0;
}