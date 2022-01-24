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
struct kingdisplay_panel {int enabled; int /*<<< orphan*/  link; int /*<<< orphan*/  backlight; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct kingdisplay_panel* FUNC3 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct kingdisplay_panel *kingdisplay = FUNC3(panel);
	int err;

	if (!kingdisplay->enabled)
		return 0;

	FUNC1(kingdisplay->backlight);

	err = FUNC2(kingdisplay->link);
	if (err < 0)
		FUNC0(panel->dev, "failed to set display off: %d\n",
			      err);

	kingdisplay->enabled = false;

	return 0;
}