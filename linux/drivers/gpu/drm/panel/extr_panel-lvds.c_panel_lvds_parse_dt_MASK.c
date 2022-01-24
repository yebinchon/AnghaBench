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
struct panel_lvds {char const* label; int /*<<< orphan*/  data_mirror; TYPE_1__* dev; int /*<<< orphan*/  bus_format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  video_mode; } ;
struct display_timing {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_RGB666_1X7X3_SPWG ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_RGB888_1X7X4_SPWG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,struct device_node*,...) ; 
 int FUNC1 (struct device_node*,char*,struct display_timing*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 int FUNC3 (struct device_node*,char*,char const**) ; 
 int FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct display_timing*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct panel_lvds *lvds)
{
	struct device_node *np = lvds->dev->of_node;
	struct display_timing timing;
	const char *mapping;
	int ret;

	ret = FUNC1(np, "panel-timing", &timing);
	if (ret < 0) {
		FUNC0(lvds->dev, "%pOF: problems parsing panel-timing (%d)\n",
			np, ret);
		return ret;
	}

	FUNC6(&timing, &lvds->video_mode);

	ret = FUNC4(np, "width-mm", &lvds->width);
	if (ret < 0) {
		FUNC0(lvds->dev, "%pOF: invalid or missing %s DT property\n",
			np, "width-mm");
		return -ENODEV;
	}
	ret = FUNC4(np, "height-mm", &lvds->height);
	if (ret < 0) {
		FUNC0(lvds->dev, "%pOF: invalid or missing %s DT property\n",
			np, "height-mm");
		return -ENODEV;
	}

	FUNC3(np, "label", &lvds->label);

	ret = FUNC3(np, "data-mapping", &mapping);
	if (ret < 0) {
		FUNC0(lvds->dev, "%pOF: invalid or missing %s DT property\n",
			np, "data-mapping");
		return -ENODEV;
	}

	if (!FUNC5(mapping, "jeida-18")) {
		lvds->bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG;
	} else if (!FUNC5(mapping, "jeida-24")) {
		lvds->bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA;
	} else if (!FUNC5(mapping, "vesa-24")) {
		lvds->bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG;
	} else {
		FUNC0(lvds->dev, "%pOF: invalid or missing %s DT property\n",
			np, "data-mapping");
		return -EINVAL;
	}

	lvds->data_mirror = FUNC2(np, "data-mirror");

	return 0;
}