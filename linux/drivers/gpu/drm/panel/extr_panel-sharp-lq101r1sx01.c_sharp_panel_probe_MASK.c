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
struct sharp_panel {struct mipi_dsi_device* link1; struct mipi_dsi_device* link2; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct mipi_dsi_device {int lanes; TYPE_1__ dev; int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  format; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int /*<<< orphan*/  MIPI_DSI_MODE_LPM ; 
 struct sharp_panel* FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mipi_dsi_device*,struct sharp_panel*) ; 
 struct mipi_dsi_device* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct sharp_panel*) ; 
 int /*<<< orphan*/  FUNC8 (struct sharp_panel*) ; 

__attribute__((used)) static int FUNC9(struct mipi_dsi_device *dsi)
{
	struct mipi_dsi_device *secondary = NULL;
	struct sharp_panel *sharp;
	struct device_node *np;
	int err;

	dsi->lanes = 4;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_MODE_LPM;

	/* Find DSI-LINK1 */
	np = FUNC5(dsi->dev.of_node, "link2", 0);
	if (np) {
		secondary = FUNC3(np);
		FUNC4(np);

		if (!secondary)
			return -EPROBE_DEFER;
	}

	/* register a panel for only the DSI-LINK1 interface */
	if (secondary) {
		sharp = FUNC0(&dsi->dev, sizeof(*sharp), GFP_KERNEL);
		if (!sharp) {
			FUNC6(&secondary->dev);
			return -ENOMEM;
		}

		FUNC2(dsi, sharp);

		sharp->link2 = secondary;
		sharp->link1 = dsi;

		err = FUNC7(sharp);
		if (err < 0) {
			FUNC6(&secondary->dev);
			return err;
		}
	}

	err = FUNC1(dsi);
	if (err < 0) {
		if (secondary)
			FUNC8(sharp);

		return err;
	}

	return 0;
}