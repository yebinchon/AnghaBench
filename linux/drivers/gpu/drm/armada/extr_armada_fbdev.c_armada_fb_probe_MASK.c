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
struct drm_fb_helper_surface_size {int dummy; } ;
struct drm_fb_helper {int /*<<< orphan*/  fb; } ;

/* Variables and functions */
 int FUNC0 (struct drm_fb_helper*,struct drm_fb_helper_surface_size*) ; 

__attribute__((used)) static int FUNC1(struct drm_fb_helper *fbh,
	struct drm_fb_helper_surface_size *sizes)
{
	int ret = 0;

	if (!fbh->fb) {
		ret = FUNC0(fbh, sizes);
		if (ret == 0)
			ret = 1;
	}
	return ret;
}