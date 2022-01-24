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
struct drm_plane {int /*<<< orphan*/ * crtc; int /*<<< orphan*/ * fb; int /*<<< orphan*/ * old_fb; TYPE_1__* funcs; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* disable_plane ) (struct drm_plane*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_plane*,int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_plane *plane)
{
	int ret;

	if (!plane->fb)
		return;

	FUNC1(FUNC2(plane->dev));

	plane->old_fb = plane->fb;
	ret = plane->funcs->disable_plane(plane, NULL);
	if (ret) {
		FUNC0("failed to disable plane with busy fb\n");
		plane->old_fb = NULL;
		return;
	}
	/* disconnect the plane from the fb and crtc: */
	FUNC3(plane->old_fb);
	plane->old_fb = NULL;
	plane->fb = NULL;
	plane->crtc = NULL;
}