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
typedef  int /*<<< orphan*/  u8 ;
struct sharp_panel {int prepared; int /*<<< orphan*/  supply; int /*<<< orphan*/  link1; int /*<<< orphan*/  mode; int /*<<< orphan*/  link2; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_PIXEL_FMT_24BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sharp_panel*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sharp_panel*,int) ; 
 struct sharp_panel* FUNC10 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC11(struct drm_panel *panel)
{
	struct sharp_panel *sharp = FUNC10(panel);
	u8 format = MIPI_DCS_PIXEL_FMT_24BIT;
	int err;

	if (sharp->prepared)
		return 0;

	err = FUNC6(sharp->supply);
	if (err < 0)
		return err;

	/*
	 * According to the datasheet, the panel needs around 10 ms to fully
	 * power up. At least another 120 ms is required before exiting sleep
	 * mode to make sure the panel is ready. Throw in another 20 ms for
	 * good measure.
	 */
	FUNC4(150);

	err = FUNC1(sharp->link1);
	if (err < 0) {
		FUNC0(panel->dev, "failed to exit sleep mode: %d\n", err);
		goto poweroff;
	}

	/*
	 * The MIPI DCS specification mandates this delay only between the
	 * exit_sleep_mode and enter_sleep_mode commands, so it isn't strictly
	 * necessary here.
	 */
	/*
	msleep(120);
	*/

	/* set left-right mode */
	err = FUNC7(sharp, 0x1000, 0x2a);
	if (err < 0) {
		FUNC0(panel->dev, "failed to set left-right mode: %d\n", err);
		goto poweroff;
	}

	/* enable command mode */
	err = FUNC7(sharp, 0x1001, 0x01);
	if (err < 0) {
		FUNC0(panel->dev, "failed to enable command mode: %d\n", err);
		goto poweroff;
	}

	err = FUNC3(sharp->link1, format);
	if (err < 0) {
		FUNC0(panel->dev, "failed to set pixel format: %d\n", err);
		goto poweroff;
	}

	/*
	 * TODO: The device supports both left-right and even-odd split
	 * configurations, but this driver currently supports only the left-
	 * right split. To support a different mode a mechanism needs to be
	 * put in place to communicate the configuration back to the DSI host
	 * controller.
	 */
	err = FUNC8(sharp->link1, sharp->link2,
					    sharp->mode);
	if (err < 0) {
		FUNC0(panel->dev, "failed to set up symmetrical split: %d\n",
			err);
		goto poweroff;
	}

	err = FUNC2(sharp->link1);
	if (err < 0) {
		FUNC0(panel->dev, "failed to set display on: %d\n", err);
		goto poweroff;
	}

	sharp->prepared = true;

	/* wait for 6 frames before continuing */
	FUNC9(sharp, 6);

	return 0;

poweroff:
	FUNC5(sharp->supply);
	return err;
}