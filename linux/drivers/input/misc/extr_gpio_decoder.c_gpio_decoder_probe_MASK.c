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
typedef  unsigned int u32 ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct input_polled_dev {TYPE_2__* input; int /*<<< orphan*/  poll; struct gpio_decoder* private; } ;
struct gpio_decoder {unsigned int axis; struct input_polled_dev* poll_dev; struct device* dev; TYPE_3__* input_gpios; } ;
struct TYPE_8__ {int ndescs; } ;
struct TYPE_6__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_7__ {TYPE_1__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (struct device*,char*,unsigned int*) ; 
 TYPE_3__* FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct input_polled_dev* FUNC5 (struct device*) ; 
 struct gpio_decoder* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_decoder_poll_gpios ; 
 int FUNC7 (struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct gpio_decoder *decoder;
	struct input_polled_dev *poll_dev;
	u32  max;
	int err;

	decoder = FUNC6(dev, sizeof(struct gpio_decoder), GFP_KERNEL);
	if (!decoder)
		return -ENOMEM;

	FUNC3(dev, "linux,axis", &decoder->axis);
	decoder->input_gpios = FUNC4(dev, NULL, GPIOD_IN);
	if (FUNC0(decoder->input_gpios)) {
		FUNC2(dev, "unable to acquire input gpios\n");
		return FUNC1(decoder->input_gpios);
	}
	if (decoder->input_gpios->ndescs < 2) {
		FUNC2(dev, "not enough gpios found\n");
		return -EINVAL;
	}

	if (FUNC3(dev, "decoder-max-value", &max))
		max = (1U << decoder->input_gpios->ndescs) - 1;

	decoder->dev = dev;
	poll_dev = FUNC5(decoder->dev);
	if (!poll_dev)
		return -ENOMEM;

	poll_dev->private = decoder;
	poll_dev->poll = gpio_decoder_poll_gpios;
	decoder->poll_dev = poll_dev;

	poll_dev->input->name = pdev->name;
	poll_dev->input->id.bustype = BUS_HOST;
	FUNC8(poll_dev->input, decoder->axis, 0, max, 0, 0);

	err = FUNC7(poll_dev);
	if (err) {
		FUNC2(dev, "failed to register polled  device\n");
		return err;
	}

	return 0;
}