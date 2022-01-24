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
struct nt39016 {int /*<<< orphan*/  supply; int /*<<< orphan*/  dev; int /*<<< orphan*/  map; int /*<<< orphan*/  reset_gpio; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nt39016_panel_regs ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct nt39016* FUNC6 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct drm_panel *drm_panel)
{
	struct nt39016 *panel = FUNC6(drm_panel);
	int err;

	err = FUNC5(panel->supply);
	if (err) {
		FUNC1(panel->dev, "Failed to enable power supply: %d", err);
		return err;
	}

	/*
	 * Reset the NT39016.
	 * The documentation says the reset pulse should be at least 40 us to
	 * pass the glitch filter, but when testing I see some resets fail and
	 * some succeed when using a 70 us delay, so we use 100 us instead.
	 */
	FUNC2(panel->reset_gpio, 1);
	FUNC8(100, 1000);
	FUNC2(panel->reset_gpio, 0);
	FUNC7(2);

	/* Init all registers. */
	err = FUNC3(panel->map, nt39016_panel_regs,
				     FUNC0(nt39016_panel_regs));
	if (err) {
		FUNC1(panel->dev, "Failed to init registers: %d", err);
		goto err_disable_regulator;
	}

	return 0;

err_disable_regulator:
	FUNC4(panel->supply);
	return err;
}