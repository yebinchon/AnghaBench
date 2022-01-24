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
struct tegra_bpmp {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct tegra_bpmp* FUNC0 (int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct tegra_bpmp* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct tegra_bpmp *FUNC6(struct device *dev)
{
	struct platform_device *pdev;
	struct tegra_bpmp *bpmp;
	struct device_node *np;

	np = FUNC3(dev->of_node, "nvidia,bpmp", 0);
	if (!np)
		return FUNC0(-ENOENT);

	pdev = FUNC1(np);
	if (!pdev) {
		bpmp = FUNC0(-ENODEV);
		goto put;
	}

	bpmp = FUNC4(pdev);
	if (!bpmp) {
		bpmp = FUNC0(-EPROBE_DEFER);
		FUNC5(&pdev->dev);
		goto put;
	}

put:
	FUNC2(np);
	return bpmp;
}