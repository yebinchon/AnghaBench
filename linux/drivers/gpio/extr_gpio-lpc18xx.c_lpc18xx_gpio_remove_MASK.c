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
struct platform_device {int dummy; } ;
struct lpc18xx_gpio_chip {int /*<<< orphan*/  clk; TYPE_1__* pin_ic; } ;
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct lpc18xx_gpio_chip* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct lpc18xx_gpio_chip *gc = FUNC2(pdev);

	if (gc->pin_ic)
		FUNC1(gc->pin_ic->domain);

	FUNC0(gc->clk);

	return 0;
}