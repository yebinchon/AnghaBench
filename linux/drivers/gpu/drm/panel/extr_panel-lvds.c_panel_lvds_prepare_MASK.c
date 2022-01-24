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
struct panel_lvds {scalar_t__ enable_gpio; int /*<<< orphan*/  dev; scalar_t__ supply; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__) ; 
 struct panel_lvds* FUNC3 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct panel_lvds *lvds = FUNC3(panel);

	if (lvds->supply) {
		int err;

		err = FUNC2(lvds->supply);
		if (err < 0) {
			FUNC0(lvds->dev, "failed to enable supply: %d\n",
				err);
			return err;
		}
	}

	if (lvds->enable_gpio)
		FUNC1(lvds->enable_gpio, 1);

	return 0;
}