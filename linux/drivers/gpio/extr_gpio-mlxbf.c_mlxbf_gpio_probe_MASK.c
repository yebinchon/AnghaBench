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
struct gpio_chip {int /*<<< orphan*/  ngpio; int /*<<< orphan*/  owner; } ;
struct mlxbf_gpio_state {struct gpio_chip gc; scalar_t__ base; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  MLXBF_GPIO_NR ; 
 scalar_t__ MLXBF_GPIO_PIN_DIR_I ; 
 scalar_t__ MLXBF_GPIO_PIN_DIR_O ; 
 scalar_t__ MLXBF_GPIO_PIN_STATE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (struct gpio_chip*,struct device*,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,struct gpio_chip*,struct mlxbf_gpio_state*) ; 
 struct mlxbf_gpio_state* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct mlxbf_gpio_state*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct mlxbf_gpio_state *gs;
	struct device *dev = &pdev->dev;
	struct gpio_chip *gc;
	int ret;

	gs = FUNC6(&pdev->dev, sizeof(*gs), GFP_KERNEL);
	if (!gs)
		return -ENOMEM;

	gs->base = FUNC7(pdev, 0);
	if (FUNC0(gs->base))
		return FUNC1(gs->base);

	gc = &gs->gc;
	ret = FUNC2(gc, dev, 8,
			 gs->base + MLXBF_GPIO_PIN_STATE,
			 NULL,
			 NULL,
			 gs->base + MLXBF_GPIO_PIN_DIR_O,
			 gs->base + MLXBF_GPIO_PIN_DIR_I,
			 0);
	if (ret)
		return -ENODEV;

	gc->owner = THIS_MODULE;
	gc->ngpio = MLXBF_GPIO_NR;

	ret = FUNC5(dev, &gs->gc, gs);
	if (ret) {
		FUNC3(&pdev->dev, "Failed adding memory mapped gpiochip\n");
		return ret;
	}

	FUNC8(pdev, gs);
	FUNC4(&pdev->dev, "registered Mellanox BlueField GPIO");
	return 0;
}