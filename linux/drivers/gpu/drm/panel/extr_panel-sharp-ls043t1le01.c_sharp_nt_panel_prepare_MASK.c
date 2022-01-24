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
struct sharp_nt_panel {int prepared; scalar_t__ reset_gpio; int /*<<< orphan*/  supply; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sharp_nt_panel*) ; 
 int FUNC6 (struct sharp_nt_panel*) ; 
 struct sharp_nt_panel* FUNC7 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC8(struct drm_panel *panel)
{
	struct sharp_nt_panel *sharp_nt = FUNC7(panel);
	int ret;

	if (sharp_nt->prepared)
		return 0;

	ret = FUNC4(sharp_nt->supply);
	if (ret < 0)
		return ret;

	FUNC2(20);

	if (sharp_nt->reset_gpio) {
		FUNC1(sharp_nt->reset_gpio, 1);
		FUNC2(1);
		FUNC1(sharp_nt->reset_gpio, 0);
		FUNC2(1);
		FUNC1(sharp_nt->reset_gpio, 1);
		FUNC2(10);
	}

	ret = FUNC5(sharp_nt);
	if (ret < 0) {
		FUNC0(panel->dev, "failed to init panel: %d\n", ret);
		goto poweroff;
	}

	ret = FUNC6(sharp_nt);
	if (ret < 0) {
		FUNC0(panel->dev, "failed to set panel on: %d\n", ret);
		goto poweroff;
	}

	sharp_nt->prepared = true;

	return 0;

poweroff:
	FUNC3(sharp_nt->supply);
	if (sharp_nt->reset_gpio)
		FUNC1(sharp_nt->reset_gpio, 0);
	return ret;
}