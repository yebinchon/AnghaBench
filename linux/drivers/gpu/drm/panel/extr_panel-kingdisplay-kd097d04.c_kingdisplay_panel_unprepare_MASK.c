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
struct kingdisplay_panel {int prepared; int /*<<< orphan*/  supply; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  link; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct kingdisplay_panel* FUNC5 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC6(struct drm_panel *panel)
{
	struct kingdisplay_panel *kingdisplay = FUNC5(panel);
	int err;

	if (!kingdisplay->prepared)
		return 0;

	err = FUNC2(kingdisplay->link);
	if (err < 0) {
		FUNC0(panel->dev, "failed to enter sleep mode: %d\n",
			      err);
		return err;
	}

	/* T15: 120ms */
	FUNC3(120);

	FUNC1(kingdisplay->enable_gpio, 0);

	err = FUNC4(kingdisplay->supply);
	if (err < 0)
		return err;

	kingdisplay->prepared = false;

	return 0;
}