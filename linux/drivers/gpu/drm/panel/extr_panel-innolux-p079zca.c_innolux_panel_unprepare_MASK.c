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
struct innolux_panel {int prepared; int /*<<< orphan*/  supplies; TYPE_1__* desc; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  link; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_supplies; scalar_t__ power_down_delay; scalar_t__ sleep_mode_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct innolux_panel* FUNC6 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC7(struct drm_panel *panel)
{
	struct innolux_panel *innolux = FUNC6(panel);
	int err;

	if (!innolux->prepared)
		return 0;

	err = FUNC3(innolux->link);
	if (err < 0)
		FUNC0(panel->dev, "failed to set display off: %d\n",
			      err);

	err = FUNC2(innolux->link);
	if (err < 0) {
		FUNC0(panel->dev, "failed to enter sleep mode: %d\n",
			      err);
		return err;
	}

	if (innolux->desc->sleep_mode_delay)
		FUNC4(innolux->desc->sleep_mode_delay);

	FUNC1(innolux->enable_gpio, 0);

	if (innolux->desc->power_down_delay)
		FUNC4(innolux->desc->power_down_delay);

	err = FUNC5(innolux->desc->num_supplies,
				     innolux->supplies);
	if (err < 0)
		return err;

	innolux->prepared = false;

	return 0;
}