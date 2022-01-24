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
struct TYPE_3__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  free; int /*<<< orphan*/  request; int /*<<< orphan*/  owner; } ;
struct pt_gpio_chip {scalar_t__ reg_base; TYPE_1__ gc; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  BGPIOF_READ_OUTPUT_REG_SET ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ PT_CLOCKRATE_REG ; 
 scalar_t__ PT_DIRECTION_REG ; 
 scalar_t__ PT_INPUTDATA_REG ; 
 scalar_t__ PT_OUTPUTDATA_REG ; 
 scalar_t__ PT_SYNC_REG ; 
 int /*<<< orphan*/  PT_TOTAL_GPIO ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int FUNC4 (TYPE_1__*,struct device*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 struct pt_gpio_chip* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,struct pt_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct pt_gpio_chip*) ; 
 int /*<<< orphan*/  pt_gpio_free ; 
 int /*<<< orphan*/  pt_gpio_request ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct acpi_device *acpi_dev;
	acpi_handle handle = FUNC0(dev);
	struct pt_gpio_chip *pt_gpio;
	int ret = 0;

	if (FUNC3(handle, &acpi_dev)) {
		FUNC6(dev, "PT GPIO device node not found\n");
		return -ENODEV;
	}

	pt_gpio = FUNC7(dev, sizeof(struct pt_gpio_chip), GFP_KERNEL);
	if (!pt_gpio)
		return -ENOMEM;

	pt_gpio->reg_base = FUNC8(pdev, 0);
	if (FUNC1(pt_gpio->reg_base)) {
		FUNC6(dev, "Failed to map MMIO resource for PT GPIO.\n");
		return FUNC2(pt_gpio->reg_base);
	}

	ret = FUNC4(&pt_gpio->gc, dev, 4,
			 pt_gpio->reg_base + PT_INPUTDATA_REG,
			 pt_gpio->reg_base + PT_OUTPUTDATA_REG, NULL,
			 pt_gpio->reg_base + PT_DIRECTION_REG, NULL,
			 BGPIOF_READ_OUTPUT_REG_SET);
	if (ret) {
		FUNC6(dev, "bgpio_init failed\n");
		return ret;
	}

	pt_gpio->gc.owner            = THIS_MODULE;
	pt_gpio->gc.request          = pt_gpio_request;
	pt_gpio->gc.free             = pt_gpio_free;
	pt_gpio->gc.ngpio            = PT_TOTAL_GPIO;
#if defined(CONFIG_OF_GPIO)
	pt_gpio->gc.of_node          = dev->of_node;
#endif
	ret = FUNC9(&pt_gpio->gc, pt_gpio);
	if (ret) {
		FUNC6(dev, "Failed to register GPIO lib\n");
		return ret;
	}

	FUNC10(pdev, pt_gpio);

	/* initialize register setting */
	FUNC11(0, pt_gpio->reg_base + PT_SYNC_REG);
	FUNC11(0, pt_gpio->reg_base + PT_CLOCKRATE_REG);

	FUNC5(dev, "PT GPIO driver loaded\n");
	return ret;
}