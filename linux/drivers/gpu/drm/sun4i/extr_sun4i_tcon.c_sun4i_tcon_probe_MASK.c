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
struct sun4i_tcon_quirks {scalar_t__ has_channel_0; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device_node*,int,int /*<<< orphan*/ ,struct drm_panel**,struct drm_bridge**) ; 
 struct sun4i_tcon_quirks* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  sun4i_tcon_ops ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	const struct sun4i_tcon_quirks *quirks;
	struct drm_bridge *bridge;
	struct drm_panel *panel;
	int ret;

	quirks = FUNC2(&pdev->dev);

	/* panels and bridges are present only on TCONs with channel 0 */
	if (quirks->has_channel_0) {
		ret = FUNC1(node, 1, 0, &panel, &bridge);
		if (ret == -EPROBE_DEFER)
			return ret;
	}

	return FUNC0(&pdev->dev, &sun4i_tcon_ops);
}