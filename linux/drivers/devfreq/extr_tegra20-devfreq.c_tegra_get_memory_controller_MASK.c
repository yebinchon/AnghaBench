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
struct tegra_mc {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct tegra_mc* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct platform_device* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct tegra_mc* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static struct tegra_mc *FUNC5(void)
{
	struct platform_device *pdev;
	struct device_node *np;
	struct tegra_mc *mc;

	np = FUNC1(NULL, NULL, "nvidia,tegra20-mc-gart");
	if (!np)
		return FUNC0(-ENOENT);

	pdev = FUNC2(np);
	FUNC3(np);
	if (!pdev)
		return FUNC0(-ENODEV);

	mc = FUNC4(pdev);
	if (!mc)
		return FUNC0(-EPROBE_DEFER);

	return mc;
}