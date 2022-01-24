#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {int /*<<< orphan*/  ngpio; } ;
struct sdv_gpio_chip_data {TYPE_3__ chip; scalar_t__ gpio_pub_base; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct pci_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GPINR ; 
 int GPIO_BAR ; 
 scalar_t__ GPMUXCTL ; 
 scalar_t__ GPOER ; 
 scalar_t__ GPOUTR ; 
 int /*<<< orphan*/  SDV_NUM_PUB_GPIOS ; 
 int FUNC0 (TYPE_3__*,TYPE_1__*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (TYPE_1__*,TYPE_3__*,struct sdv_gpio_chip_data*) ; 
 struct sdv_gpio_chip_data* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,struct sdv_gpio_chip_data*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct sdv_gpio_chip_data*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev,
					const struct pci_device_id *pci_id)
{
	struct sdv_gpio_chip_data *sd;
	int ret;
	u32 mux_val;

	sd = FUNC4(&pdev->dev, sizeof(*sd), GFP_KERNEL);
	if (!sd)
		return -ENOMEM;

	ret = FUNC7(pdev);
	if (ret) {
		FUNC1(&pdev->dev, "can't enable device.\n");
		return ret;
	}

	ret = FUNC8(pdev, 1 << GPIO_BAR, DRV_NAME);
	if (ret) {
		FUNC1(&pdev->dev, "can't alloc PCI BAR #%d\n", GPIO_BAR);
		return ret;
	}

	sd->gpio_pub_base = FUNC9(pdev)[GPIO_BAR];

	ret = FUNC5(pdev->dev.of_node, "intel,muxctl", &mux_val);
	if (!ret)
		FUNC11(mux_val, sd->gpio_pub_base + GPMUXCTL);

	ret = FUNC0(&sd->chip, &pdev->dev, 4,
			sd->gpio_pub_base + GPINR, sd->gpio_pub_base + GPOUTR,
			NULL, sd->gpio_pub_base + GPOER, NULL, 0);
	if (ret)
		return ret;

	sd->chip.ngpio = SDV_NUM_PUB_GPIOS;

	ret = FUNC3(&pdev->dev, &sd->chip, sd);
	if (ret < 0) {
		FUNC1(&pdev->dev, "gpiochip_add() failed.\n");
		return ret;
	}

	ret = FUNC10(sd, pdev);
	if (ret)
		return ret;

	FUNC6(pdev, sd);
	FUNC2(&pdev->dev, "Sodaville GPIO driver registered.\n");
	return 0;
}