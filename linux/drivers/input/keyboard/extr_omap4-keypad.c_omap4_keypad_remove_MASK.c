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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap4_keypad {struct omap4_keypad* keymap; int /*<<< orphan*/  base; int /*<<< orphan*/  input; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct omap4_keypad*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap4_keypad*) ; 
 struct omap4_keypad* FUNC4 (struct platform_device*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct omap4_keypad *keypad_data = FUNC4(pdev);
	struct resource *res;

	FUNC0(keypad_data->irq, keypad_data);

	FUNC6(&pdev->dev);

	FUNC1(keypad_data->input);

	FUNC2(keypad_data->base);

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	FUNC7(res->start, FUNC8(res));

	FUNC3(keypad_data->keymap);
	FUNC3(keypad_data);

	return 0;
}