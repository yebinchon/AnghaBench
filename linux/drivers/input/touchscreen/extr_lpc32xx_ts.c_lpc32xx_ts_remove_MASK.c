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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct lpc32xx_tsc {int /*<<< orphan*/  tsc_base; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lpc32xx_tsc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpc32xx_tsc*) ; 
 struct lpc32xx_tsc* FUNC5 (struct platform_device*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct lpc32xx_tsc *tsc = FUNC5(pdev);
	struct resource *res;

	FUNC1(tsc->irq, tsc);

	FUNC2(tsc->dev);

	FUNC0(tsc->clk);

	FUNC3(tsc->tsc_base);
	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	FUNC7(res->start, FUNC8(res));

	FUNC4(tsc);

	return 0;
}