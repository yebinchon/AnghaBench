#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tegra_output {int /*<<< orphan*/  cec; scalar_t__ ddc; scalar_t__ edid; TYPE_2__* panel; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* get_modes ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct edid*) ; 
 struct tegra_output* FUNC1 (struct drm_connector*) ; 
 int FUNC2 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 
 struct edid* FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 

int FUNC8(struct drm_connector *connector)
{
	struct tegra_output *output = FUNC1(connector);
	struct edid *edid = NULL;
	int err = 0;

	/*
	 * If the panel provides one or more modes, use them exclusively and
	 * ignore any other means of obtaining a mode.
	 */
	if (output->panel) {
		err = output->panel->funcs->get_modes(output->panel);
		if (err > 0)
			return err;
	}

	if (output->edid)
		edid = FUNC6(output->edid, sizeof(*edid), GFP_KERNEL);
	else if (output->ddc)
		edid = FUNC4(connector, output->ddc);

	FUNC0(output->cec, edid);
	FUNC3(connector, edid);

	if (edid) {
		err = FUNC2(connector, edid);
		FUNC5(edid);
	}

	return err;
}