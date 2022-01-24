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
struct resource {int dummy; } ;
struct device {struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct idma64_chip {scalar_t__ irq; struct device* sysdev; struct device* dev; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 struct idma64_chip* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct idma64_chip*) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct idma64_chip*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct idma64_chip *chip;
	struct device *dev = &pdev->dev;
	struct device *sysdev = dev->parent;
	struct resource *mem;
	int ret;

	chip = FUNC4(dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->irq = FUNC7(pdev, 0);
	if (chip->irq < 0)
		return chip->irq;

	mem = FUNC8(pdev, IORESOURCE_MEM, 0);
	chip->regs = FUNC3(dev, mem);
	if (FUNC1(chip->regs))
		return FUNC2(chip->regs);

	ret = FUNC5(sysdev, FUNC0(64));
	if (ret)
		return ret;

	chip->dev = dev;
	chip->sysdev = sysdev;

	ret = FUNC6(chip);
	if (ret)
		return ret;

	FUNC9(pdev, chip);
	return 0;
}