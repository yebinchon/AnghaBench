#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/ * dev; } ;
struct ls037v7dw01_panel {TYPE_1__ panel; void* ud_gpio; void* lr_gpio; void* mo_gpio; void* resb_gpio; void* ini_gpio; void* vdd; struct platform_device* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 struct ls037v7dw01_panel* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  ls037v7dw01_funcs ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct ls037v7dw01_panel*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct ls037v7dw01_panel *lcd;

	lcd = FUNC5(&pdev->dev, sizeof(*lcd), GFP_KERNEL);
	if (!lcd)
		return -ENOMEM;

	FUNC9(pdev, lcd);
	lcd->pdev = pdev;

	lcd->vdd = FUNC6(&pdev->dev, "envdd");
	if (FUNC0(lcd->vdd)) {
		FUNC2(&pdev->dev, "failed to get regulator\n");
		return FUNC1(lcd->vdd);
	}

	lcd->ini_gpio = FUNC3(&pdev->dev, "enable", GPIOD_OUT_LOW);
	if (FUNC0(lcd->ini_gpio)) {
		FUNC2(&pdev->dev, "failed to get enable gpio\n");
		return FUNC1(lcd->ini_gpio);
	}

	lcd->resb_gpio = FUNC3(&pdev->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(lcd->resb_gpio)) {
		FUNC2(&pdev->dev, "failed to get reset gpio\n");
		return FUNC1(lcd->resb_gpio);
	}

	lcd->mo_gpio = FUNC4(&pdev->dev, "mode", 0,
					    GPIOD_OUT_LOW);
	if (FUNC0(lcd->mo_gpio)) {
		FUNC2(&pdev->dev, "failed to get mode[0] gpio\n");
		return FUNC1(lcd->mo_gpio);
	}

	lcd->lr_gpio = FUNC4(&pdev->dev, "mode", 1,
					    GPIOD_OUT_LOW);
	if (FUNC0(lcd->lr_gpio)) {
		FUNC2(&pdev->dev, "failed to get mode[1] gpio\n");
		return FUNC1(lcd->lr_gpio);
	}

	lcd->ud_gpio = FUNC4(&pdev->dev, "mode", 2,
					    GPIOD_OUT_LOW);
	if (FUNC0(lcd->ud_gpio)) {
		FUNC2(&pdev->dev, "failed to get mode[2] gpio\n");
		return FUNC1(lcd->ud_gpio);
	}

	FUNC8(&lcd->panel);
	lcd->panel.dev = &pdev->dev;
	lcd->panel.funcs = &ls037v7dw01_funcs;

	return FUNC7(&lcd->panel);
}