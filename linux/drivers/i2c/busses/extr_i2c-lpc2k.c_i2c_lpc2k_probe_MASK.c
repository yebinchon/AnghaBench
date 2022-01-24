#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; TYPE_4__* parent; } ;
struct TYPE_12__ {TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct lpc2k_i2c {scalar_t__ irq; scalar_t__ clk; TYPE_2__ adap; scalar_t__ base; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FAST_MODE_DUTY ; 
 int I2C_FAST_MODE_PLUS_DUTY ; 
 int I2C_STD_MODE_DUTY ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ LPC24XX_I2SCLH ; 
 scalar_t__ LPC24XX_I2SCLL ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_4__*,struct resource*) ; 
 struct lpc2k_i2c* FUNC10 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpc2k_i2c*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  i2c_lpc2k_algorithm ; 
 int /*<<< orphan*/  i2c_lpc2k_handler ; 
 int /*<<< orphan*/  FUNC14 (struct lpc2k_i2c*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct lpc2k_i2c*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct lpc2k_i2c*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct lpc2k_i2c *i2c;
	struct resource *res;
	u32 bus_clk_rate;
	u32 scl_high;
	u32 clkrate;
	int ret;

	i2c = FUNC10(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	i2c->base = FUNC9(&pdev->dev, res);
	if (FUNC0(i2c->base))
		return FUNC1(i2c->base);

	i2c->irq = FUNC18(pdev, 0);
	if (i2c->irq < 0) {
		FUNC5(&pdev->dev, "can't get interrupt resource\n");
		return i2c->irq;
	}

	FUNC16(&i2c->wait);

	i2c->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(i2c->clk)) {
		FUNC5(&pdev->dev, "error getting clock\n");
		return FUNC1(i2c->clk);
	}

	ret = FUNC4(i2c->clk);
	if (ret) {
		FUNC5(&pdev->dev, "unable to enable clock.\n");
		return ret;
	}

	ret = FUNC11(&pdev->dev, i2c->irq, i2c_lpc2k_handler, 0,
			       FUNC7(&pdev->dev), i2c);
	if (ret < 0) {
		FUNC5(&pdev->dev, "can't request interrupt.\n");
		goto fail_clk;
	}

	FUNC12(i2c->irq);

	/* Place controller is a known state */
	FUNC14(i2c);

	ret = FUNC17(pdev->dev.of_node, "clock-frequency",
				   &bus_clk_rate);
	if (ret)
		bus_clk_rate = 100000; /* 100 kHz default clock rate */

	clkrate = FUNC3(i2c->clk);
	if (clkrate == 0) {
		FUNC5(&pdev->dev, "can't get I2C base clock\n");
		ret = -EINVAL;
		goto fail_clk;
	}

	/* Setup I2C dividers to generate clock with proper duty cycle */
	clkrate = clkrate / bus_clk_rate;
	if (bus_clk_rate <= 100000)
		scl_high = (clkrate * I2C_STD_MODE_DUTY) / 100;
	else if (bus_clk_rate <= 400000)
		scl_high = (clkrate * I2C_FAST_MODE_DUTY) / 100;
	else
		scl_high = (clkrate * I2C_FAST_MODE_PLUS_DUTY) / 100;

	FUNC22(scl_high, i2c->base + LPC24XX_I2SCLH);
	FUNC22(clkrate - scl_high, i2c->base + LPC24XX_I2SCLL);

	FUNC20(pdev, i2c);

	FUNC15(&i2c->adap, i2c);
	i2c->adap.owner = THIS_MODULE;
	FUNC21(i2c->adap.name, "LPC2K I2C adapter", sizeof(i2c->adap.name));
	i2c->adap.algo = &i2c_lpc2k_algorithm;
	i2c->adap.dev.parent = &pdev->dev;
	i2c->adap.dev.of_node = pdev->dev.of_node;

	ret = FUNC13(&i2c->adap);
	if (ret < 0)
		goto fail_clk;

	FUNC6(&pdev->dev, "LPC2K I2C adapter\n");

	return 0;

fail_clk:
	FUNC2(i2c->clk);
	return ret;
}