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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct i2c_mux_core {int /*<<< orphan*/  parent; } ;
struct i2c_arbitrator_data {int slew_delay_us; int wait_retry_us; int wait_free_us; struct gpio_desc* their_gpio; struct gpio_desc* our_gpio; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  I2C_MUX_ARBITRATOR ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC5 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_arbitrator_deselect ; 
 int /*<<< orphan*/  i2c_arbitrator_select ; 
 int FUNC6 (struct i2c_mux_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_mux_core* FUNC7 (int /*<<< orphan*/ *,struct device*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_arbitrator_data* FUNC8 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct i2c_mux_core*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct device_node *parent_np;
	struct i2c_mux_core *muxc;
	struct i2c_arbitrator_data *arb;
	struct gpio_desc *dummy;
	int ret;

	/* We only support probing from device tree; no platform_data */
	if (!np) {
		FUNC2(dev, "Cannot find device tree node\n");
		return -ENODEV;
	}
	if (FUNC3(dev)) {
		FUNC2(dev, "Platform data is not supported\n");
		return -EINVAL;
	}

	muxc = FUNC7(NULL, dev, 1, sizeof(*arb), I2C_MUX_ARBITRATOR,
			     i2c_arbitrator_select, i2c_arbitrator_deselect);
	if (!muxc)
		return -ENOMEM;
	arb = FUNC8(muxc);

	FUNC14(pdev, muxc);

	/* Request GPIOs, our GPIO as unclaimed to begin with */
	arb->our_gpio = FUNC4(dev, "our-claim", GPIOD_OUT_LOW);
	if (FUNC0(arb->our_gpio)) {
		FUNC2(dev, "could not get \"our-claim\" GPIO (%ld)\n",
			FUNC1(arb->our_gpio));
		return FUNC1(arb->our_gpio);
	}

	arb->their_gpio = FUNC4(dev, "their-claim", GPIOD_IN);
	if (FUNC0(arb->their_gpio)) {
		FUNC2(dev, "could not get \"their-claim\" GPIO (%ld)\n",
			FUNC1(arb->their_gpio));
		return FUNC1(arb->their_gpio);
	}

	/* At the moment we only support a single two master (us + 1 other) */
	dummy = FUNC5(dev, "their-claim", 1, GPIOD_IN);
	if (!FUNC0(dummy)) {
		FUNC2(dev, "Only one other master is supported\n");
		return -EINVAL;
	} else if (FUNC1(dummy) == -EPROBE_DEFER) {
		return -EPROBE_DEFER;
	}

	/* Arbitration parameters */
	if (FUNC13(np, "slew-delay-us", &arb->slew_delay_us))
		arb->slew_delay_us = 10;
	if (FUNC13(np, "wait-retry-us", &arb->wait_retry_us))
		arb->wait_retry_us = 3000;
	if (FUNC13(np, "wait-free-us", &arb->wait_free_us))
		arb->wait_free_us = 50000;

	/* Find our parent */
	parent_np = FUNC12(np, "i2c-parent", 0);
	if (!parent_np) {
		FUNC2(dev, "Cannot parse i2c-parent\n");
		return -EINVAL;
	}
	muxc->parent = FUNC10(parent_np);
	FUNC11(parent_np);
	if (!muxc->parent) {
		FUNC2(dev, "Cannot find parent bus\n");
		return -EPROBE_DEFER;
	}

	/* Actually add the mux adapter */
	ret = FUNC6(muxc, 0, 0, 0);
	if (ret)
		FUNC9(muxc->parent);

	return ret;
}