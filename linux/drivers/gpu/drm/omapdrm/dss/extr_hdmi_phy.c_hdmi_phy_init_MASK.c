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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hdmi_phy_data {int /*<<< orphan*/  base; int /*<<< orphan*/ * features; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  omap44xx_phy_feats ; 
 int /*<<< orphan*/  omap54xx_phy_feats ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

int FUNC4(struct platform_device *pdev, struct hdmi_phy_data *phy,
		  unsigned int version)
{
	struct resource *res;

	if (version == 4)
		phy->features = &omap44xx_phy_feats;
	else
		phy->features = &omap54xx_phy_feats;

	res = FUNC3(pdev, IORESOURCE_MEM, "phy");
	phy->base = FUNC2(&pdev->dev, res);
	if (FUNC0(phy->base))
		return FUNC1(phy->base);

	return 0;
}