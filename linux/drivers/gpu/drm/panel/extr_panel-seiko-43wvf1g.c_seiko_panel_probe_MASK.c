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
struct seiko_panel_desc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct seiko_panel {int enabled; int prepared; TYPE_1__ base; int /*<<< orphan*/  backlight; void* avdd; void* dvdd; struct seiko_panel_desc const* desc; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct seiko_panel*) ; 
 struct seiko_panel* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct device*,char*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seiko_panel_funcs ; 

__attribute__((used)) static int FUNC10(struct device *dev,
					const struct seiko_panel_desc *desc)
{
	struct device_node *backlight;
	struct seiko_panel *panel;
	int err;

	panel = FUNC3(dev, sizeof(*panel), GFP_KERNEL);
	if (!panel)
		return -ENOMEM;

	panel->enabled = false;
	panel->prepared = false;
	panel->desc = desc;

	panel->dvdd = FUNC4(dev, "dvdd");
	if (FUNC0(panel->dvdd))
		return FUNC1(panel->dvdd);

	panel->avdd = FUNC4(dev, "avdd");
	if (FUNC0(panel->avdd))
		return FUNC1(panel->avdd);

	backlight = FUNC9(dev->of_node, "backlight", 0);
	if (backlight) {
		panel->backlight = FUNC7(backlight);
		FUNC8(backlight);

		if (!panel->backlight)
			return -EPROBE_DEFER;
	}

	FUNC6(&panel->base);
	panel->base.dev = dev;
	panel->base.funcs = &seiko_panel_funcs;

	err = FUNC5(&panel->base);
	if (err < 0)
		return err;

	FUNC2(dev, panel);

	return 0;
}