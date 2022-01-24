#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_13__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_14__ {TYPE_3__* parent; struct device_node* of_node; } ;
struct TYPE_17__ {int retries; TYPE_1__ dev; struct rk3x_i2c* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct rk3x_i2c {struct regmap* clk; struct regmap* pclk; TYPE_11__ clk_rate_nb; TYPE_4__ adap; TYPE_2__* soc_data; TYPE_3__* dev; struct regmap* regs; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  t; } ;
struct resource {int dummy; } ;
struct regmap {int dummy; } ;
struct TYPE_16__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {TYPE_2__* data; } ;
struct device_node {int dummy; } ;
struct TYPE_15__ {scalar_t__ grf_offset; scalar_t__ calc_timings; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 unsigned long FUNC3 (struct regmap*) ; 
 int FUNC4 (struct regmap*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,TYPE_11__*) ; 
 int FUNC6 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 void* FUNC10 (TYPE_3__*,char*) ; 
 struct regmap* FUNC11 (TYPE_3__*,struct resource*) ; 
 struct rk3x_i2c* FUNC12 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rk3x_i2c*) ; 
 int FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct device_node*,char*) ; 
 struct of_device_id* FUNC18 (int /*<<< orphan*/ ,struct device_node*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct rk3x_i2c*) ; 
 int FUNC22 (struct regmap*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC23 (struct rk3x_i2c*,unsigned long) ; 
 int /*<<< orphan*/  rk3x_i2c_algorithm ; 
 int /*<<< orphan*/  rk3x_i2c_clk_notifier_cb ; 
 int /*<<< orphan*/  rk3x_i2c_irq ; 
 int /*<<< orphan*/  rk3x_i2c_match ; 
 scalar_t__ rk3x_i2c_v0_calc_timings ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,int) ; 
 struct regmap* FUNC26 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	const struct of_device_id *match;
	struct rk3x_i2c *i2c;
	struct resource *mem;
	int ret = 0;
	int bus_nr;
	u32 value;
	int irq;
	unsigned long clk_rate;

	i2c = FUNC12(&pdev->dev, sizeof(struct rk3x_i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	match = FUNC18(rk3x_i2c_match, np);
	i2c->soc_data = match->data;

	/* use common interface to get I2C timing properties */
	FUNC15(&pdev->dev, &i2c->t, true);

	FUNC25(i2c->adap.name, "rk3x-i2c", sizeof(i2c->adap.name));
	i2c->adap.owner = THIS_MODULE;
	i2c->adap.algo = &rk3x_i2c_algorithm;
	i2c->adap.retries = 3;
	i2c->adap.dev.of_node = np;
	i2c->adap.algo_data = i2c;
	i2c->adap.dev.parent = &pdev->dev;

	i2c->dev = &pdev->dev;

	FUNC24(&i2c->lock);
	FUNC16(&i2c->wait);

	mem = FUNC20(pdev, IORESOURCE_MEM, 0);
	i2c->regs = FUNC11(&pdev->dev, mem);
	if (FUNC1(i2c->regs))
		return FUNC2(i2c->regs);

	/* Try to set the I2C adapter number from dt */
	bus_nr = FUNC17(np, "i2c");

	/*
	 * Switch to new interface if the SoC also offers the old one.
	 * The control bit is located in the GRF register space.
	 */
	if (i2c->soc_data->grf_offset >= 0) {
		struct regmap *grf;

		grf = FUNC26(np, "rockchip,grf");
		if (FUNC1(grf)) {
			FUNC8(&pdev->dev,
				"rk3x-i2c needs 'rockchip,grf' property\n");
			return FUNC2(grf);
		}

		if (bus_nr < 0) {
			FUNC8(&pdev->dev, "rk3x-i2c needs i2cX alias");
			return -EINVAL;
		}

		/* 27+i: write mask, 11+i: value */
		value = FUNC0(27 + bus_nr) | FUNC0(11 + bus_nr);

		ret = FUNC22(grf, i2c->soc_data->grf_offset, value);
		if (ret != 0) {
			FUNC8(i2c->dev, "Could not write to GRF: %d\n", ret);
			return ret;
		}
	}

	/* IRQ setup */
	irq = FUNC19(pdev, 0);
	if (irq < 0) {
		FUNC8(&pdev->dev, "cannot find rk3x IRQ\n");
		return irq;
	}

	ret = FUNC13(&pdev->dev, irq, rk3x_i2c_irq,
			       0, FUNC9(&pdev->dev), i2c);
	if (ret < 0) {
		FUNC8(&pdev->dev, "cannot request IRQ\n");
		return ret;
	}

	FUNC21(pdev, i2c);

	if (i2c->soc_data->calc_timings == rk3x_i2c_v0_calc_timings) {
		/* Only one clock to use for bus clock and peripheral clock */
		i2c->clk = FUNC10(&pdev->dev, NULL);
		i2c->pclk = i2c->clk;
	} else {
		i2c->clk = FUNC10(&pdev->dev, "i2c");
		i2c->pclk = FUNC10(&pdev->dev, "pclk");
	}

	if (FUNC1(i2c->clk)) {
		ret = FUNC2(i2c->clk);
		if (ret != -EPROBE_DEFER)
			FUNC8(&pdev->dev, "Can't get bus clk: %d\n", ret);
		return ret;
	}
	if (FUNC1(i2c->pclk)) {
		ret = FUNC2(i2c->pclk);
		if (ret != -EPROBE_DEFER)
			FUNC8(&pdev->dev, "Can't get periph clk: %d\n", ret);
		return ret;
	}

	ret = FUNC6(i2c->clk);
	if (ret < 0) {
		FUNC8(&pdev->dev, "Can't prepare bus clk: %d\n", ret);
		return ret;
	}
	ret = FUNC6(i2c->pclk);
	if (ret < 0) {
		FUNC8(&pdev->dev, "Can't prepare periph clock: %d\n", ret);
		goto err_clk;
	}

	i2c->clk_rate_nb.notifier_call = rk3x_i2c_clk_notifier_cb;
	ret = FUNC4(i2c->clk, &i2c->clk_rate_nb);
	if (ret != 0) {
		FUNC8(&pdev->dev, "Unable to register clock notifier\n");
		goto err_pclk;
	}

	clk_rate = FUNC3(i2c->clk);
	FUNC23(i2c, clk_rate);

	ret = FUNC14(&i2c->adap);
	if (ret < 0)
		goto err_clk_notifier;

	return 0;

err_clk_notifier:
	FUNC5(i2c->clk, &i2c->clk_rate_nb);
err_pclk:
	FUNC7(i2c->pclk);
err_clk:
	FUNC7(i2c->clk);
	return ret;
}