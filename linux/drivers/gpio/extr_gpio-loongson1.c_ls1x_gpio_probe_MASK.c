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
struct platform_device {int id; struct device dev; } ;
struct gpio_chip {int base; int /*<<< orphan*/  free; int /*<<< orphan*/  request; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GPIO_DATA ; 
 scalar_t__ GPIO_DIR ; 
 scalar_t__ GPIO_OUTPUT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (struct gpio_chip*,struct device*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,struct gpio_chip*,int /*<<< orphan*/ *) ; 
 struct gpio_chip* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ gpio_reg_base ; 
 int /*<<< orphan*/  ls1x_gpio_free ; 
 int /*<<< orphan*/  ls1x_gpio_request ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct gpio_chip*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct gpio_chip *gc;
	int ret;

	gc = FUNC6(dev, sizeof(*gc), GFP_KERNEL);
	if (!gc)
		return -ENOMEM;

	gpio_reg_base = FUNC7(pdev, 0);
	if (FUNC0(gpio_reg_base))
		return FUNC1(gpio_reg_base);

	ret = FUNC2(gc, dev, 4, gpio_reg_base + GPIO_DATA,
			 gpio_reg_base + GPIO_OUTPUT, NULL,
			 NULL, gpio_reg_base + GPIO_DIR, 0);
	if (ret)
		goto err;

	gc->owner = THIS_MODULE;
	gc->request = ls1x_gpio_request;
	gc->free = ls1x_gpio_free;
	gc->base = pdev->id * 32;

	ret = FUNC5(dev, gc, NULL);
	if (ret)
		goto err;

	FUNC8(pdev, gc);
	FUNC4(dev, "Loongson1 GPIO driver registered\n");

	return 0;
err:
	FUNC3(dev, "failed to register GPIO device\n");
	return ret;
}