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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct input_polled_dev {int poll_interval; struct input_dev* input; struct adc_keys_state* private; int /*<<< orphan*/  poll; } ;
struct TYPE_7__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* phys; int /*<<< orphan*/  evbit; int /*<<< orphan*/  keybit; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct adc_keys_state {int keyup_voltage; int num_keys; TYPE_2__* map; TYPE_3__* channel; } ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
struct TYPE_9__ {int /*<<< orphan*/  indio_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  keycode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IIO_VOLTAGE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,struct adc_keys_state*) ; 
 int /*<<< orphan*/  adc_keys_poll ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 scalar_t__ FUNC5 (struct device*,char*) ; 
 scalar_t__ FUNC6 (struct device*,char*,int*) ; 
 TYPE_3__* FUNC7 (struct device*,char*) ; 
 struct input_polled_dev* FUNC8 (struct device*) ; 
 struct adc_keys_state* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_3__*,int*) ; 
 int FUNC11 (struct input_polled_dev*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct adc_keys_state *st;
	struct input_polled_dev *poll_dev;
	struct input_dev *input;
	enum iio_chan_type type;
	int i, value;
	int error;

	st = FUNC9(dev, sizeof(*st), GFP_KERNEL);
	if (!st)
		return -ENOMEM;

	st->channel = FUNC7(dev, "buttons");
	if (FUNC0(st->channel))
		return FUNC1(st->channel);

	if (!st->channel->indio_dev)
		return -ENXIO;

	error = FUNC10(st->channel, &type);
	if (error < 0)
		return error;

	if (type != IIO_VOLTAGE) {
		FUNC4(dev, "Incompatible channel type %d\n", type);
		return -EINVAL;
	}

	if (FUNC6(dev, "keyup-threshold-microvolt",
				     &st->keyup_voltage)) {
		FUNC4(dev, "Invalid or missing keyup voltage\n");
		return -EINVAL;
	}
	st->keyup_voltage /= 1000;

	error = FUNC3(dev, st);
	if (error)
		return error;

	poll_dev = FUNC8(dev);
	if (!poll_dev) {
		FUNC4(dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	if (!FUNC6(dev, "poll-interval", &value))
		poll_dev->poll_interval = value;

	poll_dev->poll = adc_keys_poll;
	poll_dev->private = st;

	input = poll_dev->input;

	input->name = pdev->name;
	input->phys = "adc-keys/input0";

	input->id.bustype = BUS_HOST;
	input->id.vendor = 0x0001;
	input->id.product = 0x0001;
	input->id.version = 0x0100;

	FUNC2(EV_KEY, input->evbit);
	for (i = 0; i < st->num_keys; i++)
		FUNC2(st->map[i].keycode, input->keybit);

	if (FUNC5(dev, "autorepeat"))
		FUNC2(EV_REP, input->evbit);

	error = FUNC11(poll_dev);
	if (error) {
		FUNC4(dev, "Unable to register input device: %d\n", error);
		return error;
	}

	return 0;
}