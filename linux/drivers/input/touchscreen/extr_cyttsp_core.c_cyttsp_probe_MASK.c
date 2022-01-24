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
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; } ;
struct device {int dummy; } ;
struct cyttsp_bus_ops {int /*<<< orphan*/  bustype; } ;
struct cyttsp {int irq; struct device* dev; int /*<<< orphan*/  phys; int /*<<< orphan*/  bl_ready; int /*<<< orphan*/  reset_gpio; struct cyttsp_bus_ops const* bus_ops; struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  CY_MAX_ID ; 
 int ENOMEM ; 
 struct cyttsp* FUNC0 (int) ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cyttsp_close ; 
 int /*<<< orphan*/  FUNC3 (struct cyttsp*) ; 
 int /*<<< orphan*/  cyttsp_irq ; 
 int /*<<< orphan*/  cyttsp_open ; 
 int FUNC4 (struct cyttsp*) ; 
 int FUNC5 (struct cyttsp*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 char* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC9 (struct device*) ; 
 struct cyttsp* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct cyttsp*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*,struct cyttsp*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct input_dev*,int,int /*<<< orphan*/ *) ; 

struct cyttsp *FUNC20(const struct cyttsp_bus_ops *bus_ops,
			    struct device *dev, int irq, size_t xfer_buf_size)
{
	struct cyttsp *ts;
	struct input_dev *input_dev;
	int error;

	ts = FUNC10(dev, sizeof(*ts) + xfer_buf_size, GFP_KERNEL);
	if (!ts)
		return FUNC0(-ENOMEM);

	input_dev = FUNC9(dev);
	if (!input_dev)
		return FUNC0(-ENOMEM);

	ts->dev = dev;
	ts->input = input_dev;
	ts->bus_ops = bus_ops;
	ts->irq = irq;

	ts->reset_gpio = FUNC8(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC1(ts->reset_gpio)) {
		error = FUNC2(ts->reset_gpio);
		FUNC6(dev, "Failed to request reset gpio, error %d\n", error);
		return FUNC0(error);
	}

	error = FUNC4(ts);
	if (error)
		return FUNC0(error);

	FUNC13(&ts->bl_ready);
	FUNC18(ts->phys, sizeof(ts->phys), "%s/input0", FUNC7(dev));

	input_dev->name = "Cypress TTSP TouchScreen";
	input_dev->phys = ts->phys;
	input_dev->id.bustype = bus_ops->bustype;
	input_dev->dev.parent = ts->dev;

	input_dev->open = cyttsp_open;
	input_dev->close = cyttsp_close;

	FUNC17(input_dev, ts);

	FUNC16(input_dev, EV_ABS, ABS_MT_POSITION_X);
	FUNC16(input_dev, EV_ABS, ABS_MT_POSITION_Y);
	FUNC19(input_dev, true, NULL);

	error = FUNC14(input_dev, CY_MAX_ID, 0);
	if (error) {
		FUNC6(dev, "Unable to init MT slots.\n");
		return FUNC0(error);
	}

	error = FUNC11(dev, ts->irq, NULL, cyttsp_irq,
					  IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					  "cyttsp", ts);
	if (error) {
		FUNC6(ts->dev, "failed to request IRQ %d, err: %d\n",
			ts->irq, error);
		return FUNC0(error);
	}

	FUNC12(ts->irq);

	FUNC3(ts);

	error = FUNC5(ts);
	if (error)
		return FUNC0(error);

	error = FUNC15(input_dev);
	if (error) {
		FUNC6(ts->dev, "failed to register input device: %d\n",
			error);
		return FUNC0(error);
	}

	return ts;
}