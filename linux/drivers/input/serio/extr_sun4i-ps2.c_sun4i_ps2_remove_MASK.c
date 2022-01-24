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
struct sun4i_ps2data {int /*<<< orphan*/  reg_base; int /*<<< orphan*/  clk; int /*<<< orphan*/  irq; int /*<<< orphan*/  serio; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sun4i_ps2data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sun4i_ps2data*) ; 
 struct sun4i_ps2data* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct sun4i_ps2data *drvdata = FUNC5(pdev);

	FUNC6(drvdata->serio);

	FUNC2(drvdata->irq, drvdata);

	FUNC0(drvdata->clk);
	FUNC1(drvdata->clk);

	FUNC3(drvdata->reg_base);

	FUNC4(drvdata);

	return 0;
}