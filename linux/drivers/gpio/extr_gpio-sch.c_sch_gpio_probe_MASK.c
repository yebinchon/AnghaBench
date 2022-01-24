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
struct TYPE_3__ {int ngpio; int /*<<< orphan*/ * parent; int /*<<< orphan*/  label; } ;
struct sch_gpio {int resume_base; TYPE_1__ chip; int /*<<< orphan*/  iobase; int /*<<< orphan*/  lock; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int id; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
#define  PCI_DEVICE_ID_INTEL_CENTERTON_ILB 131 
#define  PCI_DEVICE_ID_INTEL_ITC_LPC 130 
#define  PCI_DEVICE_ID_INTEL_QUARK_X1000_ILB 129 
#define  PCI_DEVICE_ID_INTEL_SCH_LPC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,struct sch_gpio*) ; 
 struct sch_gpio* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct sch_gpio*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 TYPE_1__ sch_gpio_chip ; 
 int /*<<< orphan*/  FUNC7 (struct sch_gpio*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct sch_gpio *sch;
	struct resource *res;

	sch = FUNC2(&pdev->dev, sizeof(*sch), GFP_KERNEL);
	if (!sch)
		return -ENOMEM;

	res = FUNC4(pdev, IORESOURCE_IO, 0);
	if (!res)
		return -EBUSY;

	if (!FUNC3(&pdev->dev, res->start, FUNC6(res),
				 pdev->name))
		return -EBUSY;

	FUNC8(&sch->lock);
	sch->iobase = res->start;
	sch->chip = sch_gpio_chip;
	sch->chip.label = FUNC0(&pdev->dev);
	sch->chip.parent = &pdev->dev;

	switch (pdev->id) {
	case PCI_DEVICE_ID_INTEL_SCH_LPC:
		sch->resume_base = 10;
		sch->chip.ngpio = 14;

		/*
		 * GPIO[6:0] enabled by default
		 * GPIO7 is configured by the CMC as SLPIOVR
		 * Enable GPIO[9:8] core powered gpios explicitly
		 */
		FUNC7(sch, 8, GEN, 1);
		FUNC7(sch, 9, GEN, 1);
		/*
		 * SUS_GPIO[2:0] enabled by default
		 * Enable SUS_GPIO3 resume powered gpio explicitly
		 */
		FUNC7(sch, 13, GEN, 1);
		break;

	case PCI_DEVICE_ID_INTEL_ITC_LPC:
		sch->resume_base = 5;
		sch->chip.ngpio = 14;
		break;

	case PCI_DEVICE_ID_INTEL_CENTERTON_ILB:
		sch->resume_base = 21;
		sch->chip.ngpio = 30;
		break;

	case PCI_DEVICE_ID_INTEL_QUARK_X1000_ILB:
		sch->resume_base = 2;
		sch->chip.ngpio = 8;
		break;

	default:
		return -ENODEV;
	}

	FUNC5(pdev, sch);

	return FUNC1(&pdev->dev, &sch->chip, sch);
}