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
struct mb86s70_gpio_chip {int /*<<< orphan*/  clk; int /*<<< orphan*/  gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct mb86s70_gpio_chip* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct mb86s70_gpio_chip *gchip = FUNC4(pdev);

	if (FUNC3(&pdev->dev))
		FUNC0(&gchip->gc);
	FUNC2(&gchip->gc);
	FUNC1(gchip->clk);

	return 0;
}