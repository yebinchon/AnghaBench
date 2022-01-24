#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sta2x11_gpio_pdata {int /*<<< orphan*/ * pinconfig; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct gsta_gpio {int irq_base; int /*<<< orphan*/  gpio; int /*<<< orphan*/  lock; TYPE_1__** regs; TYPE_1__* reg_base; int /*<<< orphan*/ * dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ic; int /*<<< orphan*/  fimsc; int /*<<< orphan*/  rimsc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GSTA_NR_BLOCKS ; 
 int GSTA_NR_GPIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct sta2x11_gpio_pdata* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct gsta_gpio*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 struct gsta_gpio* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gsta_gpio*) ; 
 int FUNC10 (struct gsta_gpio*) ; 
 int /*<<< orphan*/  gsta_gpio_handler ; 
 int /*<<< orphan*/  FUNC11 (struct gsta_gpio*) ; 
 int /*<<< orphan*/  FUNC12 (struct gsta_gpio*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct gsta_gpio*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct sta2x11_gpio_pdata*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *dev)
{
	int i, err;
	struct pci_dev *pdev;
	struct sta2x11_gpio_pdata *gpio_pdata;
	struct gsta_gpio *chip;

	pdev = *(struct pci_dev **)FUNC3(&dev->dev);
	gpio_pdata = FUNC3(&pdev->dev);

	if (gpio_pdata == NULL)
		FUNC2(&dev->dev, "no gpio config\n");
	FUNC14("gpio config: %p\n", gpio_pdata);

	chip = FUNC7(&dev->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;
	chip->dev = &dev->dev;
	chip->reg_base = FUNC8(dev, 0);
	if (FUNC0(chip->reg_base))
		return FUNC1(chip->reg_base);

	for (i = 0; i < GSTA_NR_BLOCKS; i++) {
		chip->regs[i] = chip->reg_base + i * 4096;
		/* disable all irqs */
		FUNC16(0, &chip->regs[i]->rimsc);
		FUNC16(0, &chip->regs[i]->fimsc);
		FUNC16(~0, &chip->regs[i]->ic);
	}
	FUNC15(&chip->lock);
	FUNC11(chip);
	if (gpio_pdata)
		for (i = 0; i < GSTA_NR_GPIO; i++)
			FUNC12(chip, i, gpio_pdata->pinconfig[i]);

	/* 384 was used in previous code: be compatible for other drivers */
	err = FUNC6(&dev->dev, -1, 384,
				   GSTA_NR_GPIO, NUMA_NO_NODE);
	if (err < 0) {
		FUNC4(&dev->dev, "sta2x11 gpio: Can't get irq base (%i)\n",
			 -err);
		return err;
	}
	chip->irq_base = err;

	err = FUNC10(chip);
	if (err)
		return err;

	err = FUNC9(&dev->dev, pdev->irq, gsta_gpio_handler,
			       IRQF_SHARED, KBUILD_MODNAME, chip);
	if (err < 0) {
		FUNC2(&dev->dev, "sta2x11 gpio: Can't request irq (%i)\n",
			-err);
		return err;
	}

	err = FUNC5(&dev->dev, &chip->gpio, chip);
	if (err < 0) {
		FUNC2(&dev->dev, "sta2x11 gpio: Can't register (%i)\n",
			-err);
		return err;
	}

	FUNC13(dev, chip);
	return 0;
}