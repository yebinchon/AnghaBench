#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct tilcdc_module {int dummy; } ;
struct tfp410_module {scalar_t__ gpio; int /*<<< orphan*/  i2c; struct tilcdc_module base; } ;
struct TYPE_5__ {struct tilcdc_module* platform_data; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pinctrl {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct pinctrl*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct tfp410_module* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct pinctrl* FUNC4 (TYPE_1__*) ; 
 int FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 scalar_t__ FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tfp410_module_ops ; 
 int /*<<< orphan*/  FUNC12 (struct tilcdc_module*) ; 
 int /*<<< orphan*/  FUNC13 (struct tilcdc_module*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device_node *i2c_node;
	struct tfp410_module *tfp410_mod;
	struct tilcdc_module *mod;
	struct pinctrl *pinctrl;
	uint32_t i2c_phandle;
	int ret = -EINVAL;

	/* bail out early if no DT data: */
	if (!node) {
		FUNC1(&pdev->dev, "device-tree data is missing\n");
		return -ENXIO;
	}

	tfp410_mod = FUNC3(&pdev->dev, sizeof(*tfp410_mod), GFP_KERNEL);
	if (!tfp410_mod)
		return -ENOMEM;

	mod = &tfp410_mod->base;
	pdev->dev.platform_data = mod;

	FUNC13(mod, "tfp410", &tfp410_module_ops);

	pinctrl = FUNC4(&pdev->dev);
	if (FUNC0(pinctrl))
		FUNC2(&pdev->dev, "pins are not configured\n");

	if (FUNC11(node, "i2c", &i2c_phandle)) {
		FUNC1(&pdev->dev, "could not get i2c bus phandle\n");
		goto fail;
	}

	i2c_node = FUNC8(i2c_phandle);
	if (!i2c_node) {
		FUNC1(&pdev->dev, "could not get i2c bus node\n");
		goto fail;
	}

	tfp410_mod->i2c = FUNC7(i2c_node);
	if (!tfp410_mod->i2c) {
		FUNC1(&pdev->dev, "could not get i2c\n");
		FUNC10(i2c_node);
		goto fail;
	}

	FUNC10(i2c_node);

	tfp410_mod->gpio = FUNC9(node, "powerdn-gpio",
			0, NULL);
	if (tfp410_mod->gpio < 0) {
		FUNC2(&pdev->dev, "No power down GPIO\n");
	} else {
		ret = FUNC5(tfp410_mod->gpio, "DVI_PDn");
		if (ret) {
			FUNC1(&pdev->dev, "could not get DVI_PDn gpio\n");
			goto fail_adapter;
		}
	}

	return 0;

fail_adapter:
	FUNC6(tfp410_mod->i2c);

fail:
	FUNC12(mod);
	return ret;
}