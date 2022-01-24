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
struct tegra_smmu {int dummy; } ;
struct tegra_mc {struct tegra_smmu* smmu; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (struct device_node*) ; 
 struct tegra_mc* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static struct tegra_smmu *FUNC2(struct device_node *np)
{
	struct platform_device *pdev;
	struct tegra_mc *mc;

	pdev = FUNC0(np);
	if (!pdev)
		return NULL;

	mc = FUNC1(pdev);
	if (!mc)
		return NULL;

	return mc->smmu;
}