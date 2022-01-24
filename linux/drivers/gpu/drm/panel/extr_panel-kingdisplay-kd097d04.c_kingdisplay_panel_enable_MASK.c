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
struct kingdisplay_panel {int enabled; int /*<<< orphan*/  backlight; } ;
struct drm_panel {TYPE_1__* drm; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct kingdisplay_panel* FUNC2 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct kingdisplay_panel *kingdisplay = FUNC2(panel);
	int ret;

	if (kingdisplay->enabled)
		return 0;

	ret = FUNC1(kingdisplay->backlight);
	if (ret) {
		FUNC0(panel->drm->dev,
			      "Failed to enable backlight %d\n", ret);
		return ret;
	}

	kingdisplay->enabled = true;

	return 0;
}