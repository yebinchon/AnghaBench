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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  name2 ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 

struct clk *FUNC5(struct platform_device *pdev, const char *name)
{
	struct clk *clk;
	char name2[32];

	clk = FUNC3(&pdev->dev, name);
	if (!FUNC0(clk) || FUNC1(clk) == -EPROBE_DEFER)
		return clk;

	FUNC4(name2, sizeof(name2), "%s_clk", name);

	clk = FUNC3(&pdev->dev, name2);
	if (!FUNC0(clk))
		FUNC2(&pdev->dev, "Using legacy clk name binding.  Use "
				"\"%s\" instead of \"%s\"\n", name, name2);

	return clk;
}