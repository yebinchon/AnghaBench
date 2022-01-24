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
struct platform_device {int dummy; } ;
struct cdns_gpio_chip {int /*<<< orphan*/  pclk; scalar_t__ regs; int /*<<< orphan*/  bypass_orig; } ;

/* Variables and functions */
 scalar_t__ CDNS_GPIO_BYPASS_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct cdns_gpio_chip* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct cdns_gpio_chip *cgpio = FUNC2(pdev);

	FUNC1(cgpio->bypass_orig, cgpio->regs + CDNS_GPIO_BYPASS_MODE);
	FUNC0(cgpio->pclk);

	return 0;
}