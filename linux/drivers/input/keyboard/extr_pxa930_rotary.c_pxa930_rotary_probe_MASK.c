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
struct pxa930_rotary_platform_data {scalar_t__ rel_code; scalar_t__ down_key; scalar_t__ up_key; } ;
struct pxa930_rotary {int /*<<< orphan*/ * mmio_base; struct input_dev* input_dev; struct pxa930_rotary_platform_data* pdata; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  evbit; int /*<<< orphan*/  relbit; int /*<<< orphan*/  keybit; TYPE_2__ dev; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ EV_KEY ; 
 scalar_t__ EV_REL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct pxa930_rotary_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,struct pxa930_rotary*) ; 
 struct input_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,struct pxa930_rotary*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct pxa930_rotary*) ; 
 struct pxa930_rotary* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct pxa930_rotary*) ; 
 int /*<<< orphan*/  pxa930_rotary_close ; 
 int /*<<< orphan*/  pxa930_rotary_open ; 
 int FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pxa930_rotary*) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 
 int /*<<< orphan*/  rotary_irq ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct pxa930_rotary_platform_data *pdata =
			FUNC2(&pdev->dev);
	struct pxa930_rotary *r;
	struct input_dev *input_dev;
	struct resource *res;
	int irq;
	int err;

	irq = FUNC12(pdev, 0);
	if (irq < 0)
		return -ENXIO;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC1(&pdev->dev, "no I/O memory defined\n");
		return -ENXIO;
	}

	if (!pdata) {
		FUNC1(&pdev->dev, "no platform data defined\n");
		return -EINVAL;
	}

	r = FUNC11(sizeof(struct pxa930_rotary), GFP_KERNEL);
	if (!r)
		return -ENOMEM;

	r->mmio_base = FUNC8(res->start, FUNC16(res));
	if (r->mmio_base == NULL) {
		FUNC1(&pdev->dev, "failed to remap IO memory\n");
		err = -ENXIO;
		goto failed_free;
	}

	r->pdata = pdata;
	FUNC14(pdev, r);

	/* allocate and register the input device */
	input_dev = FUNC4();
	if (!input_dev) {
		FUNC1(&pdev->dev, "failed to allocate input device\n");
		err = -ENOMEM;
		goto failed_free_io;
	}

	input_dev->name = pdev->name;
	input_dev->id.bustype = BUS_HOST;
	input_dev->open = pxa930_rotary_open;
	input_dev->close = pxa930_rotary_close;
	input_dev->dev.parent = &pdev->dev;

	if (pdata->up_key && pdata->down_key) {
		FUNC0(pdata->up_key, input_dev->keybit);
		FUNC0(pdata->down_key, input_dev->keybit);
		FUNC0(EV_KEY, input_dev->evbit);
	} else {
		FUNC0(pdata->rel_code, input_dev->relbit);
		FUNC0(EV_REL, input_dev->evbit);
	}

	r->input_dev = input_dev;
	FUNC7(input_dev, r);

	err = FUNC15(irq, rotary_irq, 0,
			"enhanced rotary", r);
	if (err) {
		FUNC1(&pdev->dev, "failed to request IRQ\n");
		goto failed_free_input;
	}

	err = FUNC6(input_dev);
	if (err) {
		FUNC1(&pdev->dev, "failed to register input device\n");
		goto failed_free_irq;
	}

	return 0;

failed_free_irq:
	FUNC3(irq, r);
failed_free_input:
	FUNC5(input_dev);
failed_free_io:
	FUNC9(r->mmio_base);
failed_free:
	FUNC10(r);
	return err;
}