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
struct gpio_chip {int base; int ngpio; int /*<<< orphan*/  owner; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  label; int /*<<< orphan*/ * parent; } ;
struct ttl_module {struct gpio_chip gpio; int /*<<< orphan*/  regs; int /*<<< orphan*/  lock; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct janz_platform_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct janz_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct gpio_chip*,int /*<<< orphan*/ *) ; 
 struct ttl_module* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct ttl_module*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ttl_get_value ; 
 int /*<<< orphan*/  ttl_set_value ; 
 int /*<<< orphan*/  FUNC9 (struct ttl_module*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct janz_platform_data *pdata;
	struct ttl_module *mod;
	struct gpio_chip *gpio;
	int ret;

	pdata = FUNC3(&pdev->dev);
	if (!pdata) {
		FUNC2(&pdev->dev, "no platform data\n");
		return -ENXIO;
	}

	mod = FUNC5(&pdev->dev, sizeof(*mod), GFP_KERNEL);
	if (!mod)
		return -ENOMEM;

	FUNC7(pdev, mod);
	FUNC8(&mod->lock);

	/* get access to the MODULbus registers for this module */
	mod->regs = FUNC6(pdev, 0);
	if (FUNC0(mod->regs))
		return FUNC1(mod->regs);

	FUNC9(mod);

	/* Initialize the GPIO data structures */
	gpio = &mod->gpio;
	gpio->parent = &pdev->dev;
	gpio->label = pdev->name;
	gpio->get = ttl_get_value;
	gpio->set = ttl_set_value;
	gpio->owner = THIS_MODULE;

	/* request dynamic allocation */
	gpio->base = -1;
	gpio->ngpio = 20;

	ret = FUNC4(&pdev->dev, gpio, NULL);
	if (ret) {
		FUNC2(&pdev->dev, "unable to add GPIO chip\n");
		return ret;
	}

	return 0;
}