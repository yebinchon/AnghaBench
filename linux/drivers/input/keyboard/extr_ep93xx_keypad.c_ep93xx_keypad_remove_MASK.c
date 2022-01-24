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
struct ep93xx_keypad {int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  input_dev; int /*<<< orphan*/  clk; scalar_t__ enabled; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ep93xx_keypad*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ep93xx_keypad*) ; 
 struct ep93xx_keypad* FUNC7 (struct platform_device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct ep93xx_keypad *keypad = FUNC7(pdev);
	struct resource *res;

	FUNC3(keypad->irq, keypad);

	if (keypad->enabled)
		FUNC0(keypad->clk);
	FUNC1(keypad->clk);

	FUNC4(keypad->input_dev);

	FUNC2(pdev);

	FUNC5(keypad->mmio_base);

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	FUNC9(res->start, FUNC10(res));

	FUNC6(keypad);

	return 0;
}