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
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hdmi {int /*<<< orphan*/  phy_dev; int /*<<< orphan*/  phy; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct platform_device* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct hdmi *hdmi)
{
	struct platform_device *pdev = hdmi->pdev;
	struct platform_device *phy_pdev;
	struct device_node *phy_node;

	phy_node = FUNC4(pdev->dev.of_node, "phys", 0);
	if (!phy_node) {
		FUNC0(&pdev->dev, "cannot find phy device\n");
		return -ENXIO;
	}

	phy_pdev = FUNC2(phy_node);
	if (phy_pdev)
		hdmi->phy = FUNC5(phy_pdev);

	FUNC3(phy_node);

	if (!phy_pdev || !hdmi->phy) {
		FUNC0(&pdev->dev, "phy driver is not ready\n");
		return -EPROBE_DEFER;
	}

	hdmi->phy_dev = FUNC1(&phy_pdev->dev);

	return 0;
}