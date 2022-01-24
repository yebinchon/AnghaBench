#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rotary_encoder {int steps; int axis; int /*<<< orphan*/ * irq; TYPE_3__* gpios; void* last_stable; void* relative_axis; struct input_dev* input; int /*<<< orphan*/  encoding; void* rollover; int /*<<< orphan*/  access_mutex; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_7__ {struct device* parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/ * irq_handler_t ;
struct TYPE_8__ {int ndescs; int /*<<< orphan*/ * desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  ROTENC_BINARY ; 
 int /*<<< orphan*/  ROTENC_GRAY ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 void* FUNC7 (struct device*,char*) ; 
 int FUNC8 (struct device*,char*,int*) ; 
 TYPE_3__* FUNC9 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC10 (struct device*) ; 
 int /*<<< orphan*/ * FUNC11 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct rotary_encoder* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct rotary_encoder*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct rotary_encoder*) ; 
 void* FUNC20 (struct rotary_encoder*) ; 
 int /*<<< orphan*/  rotary_encoder_half_period_irq ; 
 int /*<<< orphan*/  rotary_encoder_irq ; 
 int /*<<< orphan*/  rotary_encoder_quarter_period_irq ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rotary_encoder *encoder;
	struct input_dev *input;
	irq_handler_t handler;
	u32 steps_per_period;
	unsigned int i;
	int err;

	encoder = FUNC12(dev, sizeof(struct rotary_encoder), GFP_KERNEL);
	if (!encoder)
		return -ENOMEM;

	FUNC18(&encoder->access_mutex);

	FUNC8(dev, "rotary-encoder,steps", &encoder->steps);

	err = FUNC8(dev, "rotary-encoder,steps-per-period",
				       &steps_per_period);
	if (err) {
		/*
		 * The 'half-period' property has been deprecated, you must
		 * use 'steps-per-period' and set an appropriate value, but
		 * we still need to parse it to maintain compatibility. If
		 * neither property is present we fall back to the one step
		 * per period behavior.
		 */
		steps_per_period = FUNC7(dev,
					"rotary-encoder,half-period") ? 2 : 1;
	}

	encoder->rollover =
		FUNC7(dev, "rotary-encoder,rollover");

	if (!FUNC6(dev, "rotary-encoder,encoding") ||
	    !FUNC5(dev, "rotary-encoder,encoding",
					  "gray")) {
		FUNC3(dev, "gray");
		encoder->encoding = ROTENC_GRAY;
	} else if (!FUNC5(dev, "rotary-encoder,encoding",
						 "binary")) {
		FUNC3(dev, "binary");
		encoder->encoding = ROTENC_BINARY;
	} else {
		FUNC2(dev, "unknown encoding setting\n");
		return -EINVAL;
	}

	FUNC8(dev, "linux,axis", &encoder->axis);
	encoder->relative_axis =
		FUNC7(dev, "rotary-encoder,relative-axis");

	encoder->gpios = FUNC9(dev, NULL, GPIOD_IN);
	if (FUNC0(encoder->gpios)) {
		err = FUNC1(encoder->gpios);
		if (err != -EPROBE_DEFER)
			FUNC2(dev, "unable to get gpios: %d\n", err);
		return err;
	}
	if (encoder->gpios->ndescs < 2) {
		FUNC2(dev, "not enough gpios found\n");
		return -EINVAL;
	}

	input = FUNC10(dev);
	if (!input)
		return -ENOMEM;

	encoder->input = input;

	input->name = pdev->name;
	input->id.bustype = BUS_HOST;
	input->dev.parent = dev;

	if (encoder->relative_axis)
		FUNC17(input, EV_REL, encoder->axis);
	else
		FUNC16(input,
				     encoder->axis, 0, encoder->steps, 0, 1);

	switch (steps_per_period >> (encoder->gpios->ndescs - 2)) {
	case 4:
		handler = &rotary_encoder_quarter_period_irq;
		encoder->last_stable = FUNC20(encoder);
		break;
	case 2:
		handler = &rotary_encoder_half_period_irq;
		encoder->last_stable = FUNC20(encoder);
		break;
	case 1:
		handler = &rotary_encoder_irq;
		break;
	default:
		FUNC2(dev, "'%d' is not a valid steps-per-period value\n",
			steps_per_period);
		return -EINVAL;
	}

	encoder->irq =
		FUNC11(dev,
			     encoder->gpios->ndescs, sizeof(*encoder->irq),
			     GFP_KERNEL);
	if (!encoder->irq)
		return -ENOMEM;

	for (i = 0; i < encoder->gpios->ndescs; ++i) {
		encoder->irq[i] = FUNC14(encoder->gpios->desc[i]);

		err = FUNC13(dev, encoder->irq[i],
				NULL, handler,
				IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING |
				IRQF_ONESHOT,
				DRV_NAME, encoder);
		if (err) {
			FUNC2(dev, "unable to request IRQ %d (gpio#%d)\n",
				encoder->irq[i], i);
			return err;
		}
	}

	err = FUNC15(input);
	if (err) {
		FUNC2(dev, "failed to register input device\n");
		return err;
	}

	FUNC4(dev,
			   FUNC7(dev, "wakeup-source"));

	FUNC19(pdev, encoder);

	return 0;
}