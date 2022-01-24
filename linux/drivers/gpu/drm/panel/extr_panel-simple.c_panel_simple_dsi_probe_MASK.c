#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct panel_simple {int /*<<< orphan*/  base; } ;
struct panel_desc_dsi {int /*<<< orphan*/  lanes; int /*<<< orphan*/  format; int /*<<< orphan*/  flags; int /*<<< orphan*/  desc; } ;
struct of_device_id {struct panel_desc_dsi* data; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct mipi_dsi_device {TYPE_1__ dev; int /*<<< orphan*/  lanes; int /*<<< orphan*/  format; int /*<<< orphan*/  mode_flags; } ;

/* Variables and functions */
 int ENODEV ; 
 struct panel_simple* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dsi_of_match ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 struct of_device_id* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mipi_dsi_device *dsi)
{
	const struct panel_desc_dsi *desc;
	const struct of_device_id *id;
	int err;

	id = FUNC3(dsi_of_match, dsi->dev.of_node);
	if (!id)
		return -ENODEV;

	desc = id->data;

	err = FUNC4(&dsi->dev, &desc->desc);
	if (err < 0)
		return err;

	dsi->mode_flags = desc->flags;
	dsi->format = desc->format;
	dsi->lanes = desc->lanes;

	err = FUNC2(dsi);
	if (err) {
		struct panel_simple *panel = FUNC0(&dsi->dev);

		FUNC1(&panel->base);
	}

	return err;
}