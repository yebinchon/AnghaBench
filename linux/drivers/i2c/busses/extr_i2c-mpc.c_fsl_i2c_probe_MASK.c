#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {scalar_t__ start; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {struct mpc_i2c_data* data; } ;
struct mpc_i2c_data {int /*<<< orphan*/  (* setup ) (int /*<<< orphan*/ ,struct mpc_i2c*,int) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct TYPE_11__ {int timeout; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct mpc_i2c {int /*<<< orphan*/  base; scalar_t__ irq; struct clk* clk_per; TYPE_3__ adap; TYPE_2__* dev; int /*<<< orphan*/  queue; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int const HZ ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int MPC_I2C_CLOCK_LEGACY ; 
 int MPC_I2C_CLOCK_PRESERVE ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 struct clk* FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct mpc_i2c*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct mpc_i2c*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mpc_i2c*) ; 
 struct mpc_i2c* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpc_i2c_isr ; 
 int /*<<< orphan*/  mpc_i2c_of_match ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct mpc_i2c*,int) ; 
 TYPE_3__ mpc_ops ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 int* FUNC17 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC19 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct mpc_i2c*) ; 
 int FUNC23 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mpc_i2c*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct mpc_i2c*,int) ; 

__attribute__((used)) static int FUNC26(struct platform_device *op)
{
	const struct of_device_id *match;
	struct mpc_i2c *i2c;
	const u32 *prop;
	u32 clock = MPC_I2C_CLOCK_LEGACY;
	int result = 0;
	int plen;
	struct resource res;
	struct clk *clk;
	int err;

	match = FUNC19(mpc_i2c_of_match, &op->dev);
	if (!match)
		return -EINVAL;

	i2c = FUNC14(sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	i2c->dev = &op->dev; /* for debug and error output */

	FUNC9(&i2c->queue);

	i2c->base = FUNC18(op->dev.of_node, 0);
	if (!i2c->base) {
		FUNC3(i2c->dev, "failed to map controller\n");
		result = -ENOMEM;
		goto fail_map;
	}

	i2c->irq = FUNC12(op->dev.of_node, 0);
	if (i2c->irq) { /* no i2c->irq implies polling */
		result = FUNC23(i2c->irq, mpc_i2c_isr,
				     IRQF_SHARED, "i2c-mpc", i2c);
		if (result < 0) {
			FUNC3(i2c->dev, "failed to attach interrupt\n");
			goto fail_request;
		}
	}

	/*
	 * enable clock for the I2C peripheral (non fatal),
	 * keep a reference upon successful allocation
	 */
	clk = FUNC5(&op->dev, NULL);
	if (!FUNC0(clk)) {
		err = FUNC2(clk);
		if (err) {
			FUNC3(&op->dev, "failed to enable clock\n");
			goto fail_request;
		} else {
			i2c->clk_per = clk;
		}
	}

	if (FUNC21(op->dev.of_node, "fsl,preserve-clocking")) {
		clock = MPC_I2C_CLOCK_PRESERVE;
	} else {
		prop = FUNC17(op->dev.of_node, "clock-frequency",
					&plen);
		if (prop && plen == sizeof(u32))
			clock = *prop;
	}

	if (match->data) {
		const struct mpc_i2c_data *data = match->data;
		data->setup(op->dev.of_node, i2c, clock);
	} else {
		/* Backwards compatibility */
		if (FUNC17(op->dev.of_node, "dfsrr", NULL))
			FUNC15(op->dev.of_node, i2c, clock);
	}

	prop = FUNC17(op->dev.of_node, "fsl,timeout", &plen);
	if (prop && plen == sizeof(u32)) {
		mpc_ops.timeout = *prop * HZ / 1000000;
		if (mpc_ops.timeout < 5)
			mpc_ops.timeout = 5;
	}
	FUNC4(i2c->dev, "timeout %u us\n", mpc_ops.timeout * 1000000 / HZ);

	FUNC22(op, i2c);

	i2c->adap = mpc_ops;
	FUNC16(op->dev.of_node, 0, &res);
	FUNC24(i2c->adap.name, sizeof(i2c->adap.name),
		  "MPC adapter at 0x%llx", (unsigned long long)res.start);
	FUNC8(&i2c->adap, i2c);
	i2c->adap.dev.parent = &op->dev;
	i2c->adap.dev.of_node = FUNC20(op->dev.of_node);

	result = FUNC7(&i2c->adap);
	if (result < 0)
		goto fail_add;

	return result;

 fail_add:
	if (i2c->clk_per)
		FUNC1(i2c->clk_per);
	FUNC6(i2c->irq, i2c);
 fail_request:
	FUNC11(i2c->irq);
	FUNC10(i2c->base);
 fail_map:
	FUNC13(i2c);
	return result;
}