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
struct kingdisplay_panel_cmd {int dummy; } ;
struct kingdisplay_panel {int prepared; int /*<<< orphan*/  supply; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  link; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * init_code ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct kingdisplay_panel* FUNC9 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct drm_panel *panel)
{
	struct kingdisplay_panel *kingdisplay = FUNC9(panel);
	int err, regulator_err;
	unsigned int i;

	if (kingdisplay->prepared)
		return 0;

	FUNC2(kingdisplay->enable_gpio, 0);

	err = FUNC8(kingdisplay->supply);
	if (err < 0)
		return err;

	/* T2: 15ms */
	FUNC10(15000, 16000);

	FUNC2(kingdisplay->enable_gpio, 1);

	/* T4: 15ms */
	FUNC10(15000, 16000);

	for (i = 0; i < FUNC0(init_code); i++) {
		err = FUNC5(kingdisplay->link, &init_code[i],
					sizeof(struct kingdisplay_panel_cmd));
		if (err < 0) {
			FUNC1(panel->dev, "failed write init cmds: %d\n",
				      err);
			goto poweroff;
		}
	}

	err = FUNC3(kingdisplay->link);
	if (err < 0) {
		FUNC1(panel->dev, "failed to exit sleep mode: %d\n",
			      err);
		goto poweroff;
	}

	/* T6: 120ms */
	FUNC6(120);

	err = FUNC4(kingdisplay->link);
	if (err < 0) {
		FUNC1(panel->dev, "failed to set display on: %d\n",
			      err);
		goto poweroff;
	}

	/* T7: 10ms */
	FUNC10(10000, 11000);

	kingdisplay->prepared = true;

	return 0;

poweroff:
	FUNC2(kingdisplay->enable_gpio, 0);

	regulator_err = FUNC7(kingdisplay->supply);
	if (regulator_err)
		FUNC1(panel->dev, "failed to disable regulator: %d\n",
			      regulator_err);

	return err;
}