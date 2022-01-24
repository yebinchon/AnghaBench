#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct device {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct input_polled_dev {TYPE_3__* input; int /*<<< orphan*/  poll_interval; int /*<<< orphan*/  poll; struct clps711x_keypad_data* private; } ;
struct device_node {int dummy; } ;
struct clps711x_keypad_data {int row_count; int /*<<< orphan*/  syscon; struct clps711x_gpio_data* gpio_data; int /*<<< orphan*/  row_shift; } ;
struct clps711x_gpio_data {int /*<<< orphan*/  desc; } ;
struct TYPE_6__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  evbit; TYPE_2__ id; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int /*<<< orphan*/  CLPS711X_KEYPAD_COL_COUNT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SYSCON1_KBDSCAN_MASK ; 
 int /*<<< orphan*/  SYSCON_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clps711x_keypad_poll ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 struct clps711x_gpio_data* FUNC5 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct clps711x_keypad_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct input_polled_dev* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct input_polled_dev*) ; 
 int FUNC10 (struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC13 (struct device_node*,char*) ; 
 scalar_t__ FUNC14 (struct device_node*,char*) ; 
 int FUNC15 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct clps711x_keypad_data *priv;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct input_polled_dev *poll_dev;
	u32 poll_interval;
	int i, err;

	priv = FUNC6(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->syscon =
		FUNC18("cirrus,ep7209-syscon1");
	if (FUNC0(priv->syscon))
		return FUNC1(priv->syscon);

	priv->row_count = FUNC13(np, "row-gpios");
	if (priv->row_count < 1)
		return -EINVAL;

	priv->gpio_data = FUNC5(dev,
				priv->row_count, sizeof(*priv->gpio_data),
				GFP_KERNEL);
	if (!priv->gpio_data)
		return -ENOMEM;

	priv->row_shift = FUNC7(CLPS711X_KEYPAD_COL_COUNT);

	for (i = 0; i < priv->row_count; i++) {
		struct clps711x_gpio_data *data = &priv->gpio_data[i];

		data->desc = FUNC4(dev, "row", i, GPIOD_IN);
		if (FUNC0(data->desc))
			return FUNC1(data->desc);
	}

	err = FUNC15(np, "poll-interval", &poll_interval);
	if (err)
		return err;

	poll_dev = FUNC8();
	if (!poll_dev)
		return -ENOMEM;

	poll_dev->private		= priv;
	poll_dev->poll			= clps711x_keypad_poll;
	poll_dev->poll_interval		= poll_interval;
	poll_dev->input->name		= pdev->name;
	poll_dev->input->dev.parent	= dev;
	poll_dev->input->id.bustype	= BUS_HOST;
	poll_dev->input->id.vendor	= 0x0001;
	poll_dev->input->id.product	= 0x0001;
	poll_dev->input->id.version	= 0x0100;

	err = FUNC12(NULL, NULL, priv->row_count,
					 CLPS711X_KEYPAD_COL_COUNT,
					 NULL, poll_dev->input);
	if (err)
		goto out_err;

	FUNC11(poll_dev->input, EV_MSC, MSC_SCAN);
	if (FUNC14(np, "autorepeat"))
		FUNC3(EV_REP, poll_dev->input->evbit);

	FUNC16(pdev, poll_dev);

	/* Set all columns to low */
	FUNC17(priv->syscon, SYSCON_OFFSET, SYSCON1_KBDSCAN_MASK,
			   FUNC2(1));

	err = FUNC10(poll_dev);
	if (err)
		goto out_err;

	return 0;

out_err:
	FUNC9(poll_dev);
	return err;
}