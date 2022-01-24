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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*,int) ; 
 scalar_t__ FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 struct clk* FUNC4 (struct platform_device*,char const*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev, struct clk **clkp,
		const char *name, bool mandatory)
{
	struct device *dev = &pdev->dev;
	struct clk *clk = FUNC4(pdev, name);
	if (FUNC2(clk) && mandatory) {
		FUNC1(dev, "failed to get %s (%ld)\n", name, FUNC3(clk));
		return FUNC3(clk);
	}
	if (FUNC2(clk))
		FUNC0("skipping %s", name);
	else
		*clkp = clk;

	return 0;
}