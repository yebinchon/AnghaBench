#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct pxa930_trkball {int /*<<< orphan*/  mmio_base; struct input_dev* input; int /*<<< orphan*/  pdata; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {TYPE_2__ dev; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,struct pxa930_trkball*) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,struct pxa930_trkball*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pxa930_trkball*) ; 
 struct pxa930_trkball* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct pxa930_trkball*) ; 
 int /*<<< orphan*/  pxa930_trkball_close ; 
 int /*<<< orphan*/  FUNC15 (struct pxa930_trkball*) ; 
 int /*<<< orphan*/  pxa930_trkball_interrupt ; 
 int /*<<< orphan*/  pxa930_trkball_open ; 
 int FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pxa930_trkball*) ; 
 int /*<<< orphan*/  FUNC17 (struct resource*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct pxa930_trkball *trkball;
	struct input_dev *input;
	struct resource *res;
	int irq, error;

	irq = FUNC12(pdev, 0);
	if (irq < 0)
		return -ENXIO;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC0(&pdev->dev, "failed to get register memory\n");
		return -ENXIO;
	}

	trkball = FUNC11(sizeof(struct pxa930_trkball), GFP_KERNEL);
	if (!trkball)
		return -ENOMEM;

	trkball->pdata = FUNC1(&pdev->dev);
	if (!trkball->pdata) {
		FUNC0(&pdev->dev, "no platform data defined\n");
		error = -EINVAL;
		goto failed;
	}

	trkball->mmio_base = FUNC8(res->start, FUNC17(res));
	if (!trkball->mmio_base) {
		FUNC0(&pdev->dev, "failed to ioremap registers\n");
		error = -ENXIO;
		goto failed;
	}

	/* held the module in reset, will be enabled in open() */
	FUNC15(trkball);

	error = FUNC16(irq, pxa930_trkball_interrupt, 0,
			    pdev->name, trkball);
	if (error) {
		FUNC0(&pdev->dev, "failed to request irq: %d\n", error);
		goto failed_free_io;
	}

	FUNC14(pdev, trkball);

	input = FUNC3();
	if (!input) {
		FUNC0(&pdev->dev, "failed to allocate input device\n");
		error = -ENOMEM;
		goto failed_free_irq;
	}

	input->name = pdev->name;
	input->id.bustype = BUS_HOST;
	input->open = pxa930_trkball_open;
	input->close = pxa930_trkball_close;
	input->dev.parent = &pdev->dev;
	FUNC7(input, trkball);

	trkball->input = input;

	FUNC6(input, EV_REL, REL_X);
	FUNC6(input, EV_REL, REL_Y);

	error = FUNC5(input);
	if (error) {
		FUNC0(&pdev->dev, "unable to register input device\n");
		goto failed_free_input;
	}

	return 0;

failed_free_input:
	FUNC4(input);
failed_free_irq:
	FUNC2(irq, trkball);
failed_free_io:
	FUNC9(trkball->mmio_base);
failed:
	FUNC10(trkball);
	return error;
}