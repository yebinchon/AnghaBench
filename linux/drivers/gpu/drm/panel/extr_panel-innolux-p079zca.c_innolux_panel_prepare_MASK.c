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
struct panel_init_cmd {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct innolux_panel {int prepared; int /*<<< orphan*/  supplies; TYPE_1__* desc; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  link; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_supplies; struct panel_init_cmd* init_cmds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct innolux_panel* FUNC10 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static int FUNC12(struct drm_panel *panel)
{
	struct innolux_panel *innolux = FUNC10(panel);
	int err;

	if (innolux->prepared)
		return 0;

	FUNC2(innolux->enable_gpio, 0);

	err = FUNC9(innolux->desc->num_supplies,
				    innolux->supplies);
	if (err < 0)
		return err;

	/* p079zca: t2 (20ms), p097pfg: t4 (15ms) */
	FUNC11(20000, 21000);

	FUNC2(innolux->enable_gpio, 1);

	/* p079zca: t4, p097pfg: t5 */
	FUNC11(20000, 21000);

	if (innolux->desc->init_cmds) {
		const struct panel_init_cmd *cmds =
					innolux->desc->init_cmds;
		unsigned int i;

		for (i = 0; cmds[i].len != 0; i++) {
			const struct panel_init_cmd *cmd = &cmds[i];

			err = FUNC6(innolux->link, cmd->data,
						     cmd->len);
			if (err < 0) {
				FUNC1(panel->dev,
					"failed to write command %u\n", i);
				goto poweroff;
			}

			/*
			 * Included by random guessing, because without this
			 * (or at least, some delay), the panel sometimes
			 * didn't appear to pick up the command sequence.
			 */
			err = FUNC4(innolux->link);
			if (err < 0) {
				FUNC1(panel->dev,
					"failed to send DCS nop: %d\n", err);
				goto poweroff;
			}
		}
	}

	err = FUNC3(innolux->link);
	if (err < 0) {
		FUNC0(panel->dev, "failed to exit sleep mode: %d\n",
			      err);
		goto poweroff;
	}

	/* T6: 120ms - 1000ms*/
	FUNC7(120);

	err = FUNC5(innolux->link);
	if (err < 0) {
		FUNC0(panel->dev, "failed to set display on: %d\n",
			      err);
		goto poweroff;
	}

	/* T7: 5ms */
	FUNC11(5000, 6000);

	innolux->prepared = true;

	return 0;

poweroff:
	FUNC2(innolux->enable_gpio, 0);
	FUNC8(innolux->desc->num_supplies, innolux->supplies);

	return err;
}