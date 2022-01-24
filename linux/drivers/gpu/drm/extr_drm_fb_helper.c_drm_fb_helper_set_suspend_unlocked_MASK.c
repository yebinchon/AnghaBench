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
struct drm_fb_helper {TYPE_1__* fbdev; int /*<<< orphan*/  resume_work; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ FBINFO_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_fb_helper *fb_helper,
					bool suspend)
{
	if (!fb_helper || !fb_helper->fbdev)
		return;

	/* make sure there's no pending/ongoing resume */
	FUNC4(&fb_helper->resume_work);

	if (suspend) {
		if (fb_helper->fbdev->state != FBINFO_STATE_RUNNING)
			return;

		FUNC0();

	} else {
		if (fb_helper->fbdev->state == FBINFO_STATE_RUNNING)
			return;

		if (!FUNC1()) {
			FUNC5(&fb_helper->resume_work);
			return;
		}
	}

	FUNC3(fb_helper->fbdev, suspend);
	FUNC2();
}