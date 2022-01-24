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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_hdmi {int /*<<< orphan*/  phy; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct platform_device*,struct device_node*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static int FUNC3(struct omap_hdmi *hdmi)
{
	struct platform_device *pdev = hdmi->pdev;
	struct device_node *node = pdev->dev.of_node;
	struct device_node *ep;
	int r;

	ep = FUNC1(node, 0, 0);
	if (!ep)
		return 0;

	r = FUNC0(pdev, ep, &hdmi->phy);
	FUNC2(ep);
	return r;
}