#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {struct device_node* of_node; TYPE_4__* parent; } ;
struct TYPE_11__ {TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct efm32_i2c_ddata {int irq; int location; int frequency; int /*<<< orphan*/  clk; TYPE_2__ adapter; int /*<<< orphan*/  base; int /*<<< orphan*/  done; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_CLKDIV ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  REG_CMD ; 
 int REG_CMD_ABORT ; 
 int /*<<< orphan*/  REG_CTRL ; 
 int REG_CTRL_BITO_160PCC ; 
 int REG_CTRL_EN ; 
 int REG_CTRL_GIBITO ; 
 int /*<<< orphan*/  REG_IEN ; 
 int /*<<< orphan*/  REG_IFC ; 
 int REG_IFC__MASK ; 
 int REG_IF_ACK ; 
 int REG_IF_ARBLOST ; 
 int REG_IF_BUSERR ; 
 int REG_IF_NACK ; 
 int REG_IF_RXDATAV ; 
 int REG_IF_TXC ; 
 int /*<<< orphan*/  REG_ROUTE ; 
 int FUNC4 (int) ; 
 int REG_ROUTE_SCLPEN ; 
 int REG_ROUTE_SDAPEN ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,struct resource*) ; 
 struct efm32_i2c_ddata* FUNC13 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  efm32_i2c_algo ; 
 int FUNC14 (struct efm32_i2c_ddata*) ; 
 int /*<<< orphan*/  efm32_i2c_irq ; 
 int /*<<< orphan*/  FUNC15 (struct efm32_i2c_ddata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int,struct efm32_i2c_ddata*) ; 
 int FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,struct efm32_i2c_ddata*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct device_node*,char*,int*) ; 
 int FUNC21 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct efm32_i2c_ddata*) ; 
 int FUNC24 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct efm32_i2c_ddata*) ; 
 int FUNC25 (struct resource*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct efm32_i2c_ddata *ddata;
	struct resource *res;
	unsigned long rate;
	struct device_node *np = pdev->dev.of_node;
	u32 location, frequency;
	int ret;
	u32 clkdiv;

	if (!np)
		return -EINVAL;

	ddata = FUNC13(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;
	FUNC23(pdev, ddata);

	FUNC19(&ddata->done);
	FUNC26(ddata->adapter.name, pdev->name, sizeof(ddata->adapter.name));
	ddata->adapter.owner = THIS_MODULE;
	ddata->adapter.algo = &efm32_i2c_algo;
	ddata->adapter.dev.parent = &pdev->dev;
	ddata->adapter.dev.of_node = pdev->dev.of_node;
	FUNC18(&ddata->adapter, ddata);

	ddata->clk = FUNC11(&pdev->dev, NULL);
	if (FUNC1(ddata->clk)) {
		ret = FUNC2(ddata->clk);
		FUNC9(&pdev->dev, "failed to get clock: %d\n", ret);
		return ret;
	}

	res = FUNC22(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC9(&pdev->dev, "failed to determine base address\n");
		return -ENODEV;
	}

	if (FUNC25(res) < 0x42) {
		FUNC9(&pdev->dev, "memory resource too small\n");
		return -EINVAL;
	}

	ddata->base = FUNC12(&pdev->dev, res);
	if (FUNC1(ddata->base))
		return FUNC2(ddata->base);

	ret = FUNC21(pdev, 0);
	if (ret <= 0) {
		FUNC9(&pdev->dev, "failed to get irq (%d)\n", ret);
		if (!ret)
			ret = -EINVAL;
		return ret;
	}

	ddata->irq = ret;

	ret = FUNC7(ddata->clk);
	if (ret < 0) {
		FUNC9(&pdev->dev, "failed to enable clock (%d)\n", ret);
		return ret;
	}


	ret = FUNC20(np, "energymicro,location", &location);

	if (ret)
		/* fall back to wrongly namespaced property */
		ret = FUNC20(np, "efm32,location", &location);

	if (!ret) {
		FUNC8(&pdev->dev, "using location %u\n", location);
	} else {
		/* default to location configured in hardware */
		location = FUNC14(ddata);

		FUNC10(&pdev->dev, "fall back to location %u\n", location);
	}

	ddata->location = location;

	ret = FUNC20(np, "clock-frequency", &frequency);
	if (!ret) {
		FUNC8(&pdev->dev, "using frequency %u\n", frequency);
	} else {
		frequency = 100000;
		FUNC10(&pdev->dev, "defaulting to 100 kHz\n");
	}
	ddata->frequency = frequency;

	rate = FUNC6(ddata->clk);
	if (!rate) {
		FUNC9(&pdev->dev, "there is no input clock available\n");
		ret = -EINVAL;
		goto err_disable_clk;
	}
	clkdiv = FUNC0(rate, 8 * ddata->frequency) - 1;
	if (clkdiv >= 0x200) {
		FUNC9(&pdev->dev,
				"input clock too fast (%lu) to divide down to bus freq (%lu)",
				rate, ddata->frequency);
		ret = -EINVAL;
		goto err_disable_clk;
	}

	FUNC8(&pdev->dev, "input clock = %lu, bus freq = %lu, clkdiv = %lu\n",
			rate, ddata->frequency, (unsigned long)clkdiv);
	FUNC15(ddata, REG_CLKDIV, FUNC3(clkdiv));

	FUNC15(ddata, REG_ROUTE, REG_ROUTE_SDAPEN |
			REG_ROUTE_SCLPEN |
			FUNC4(ddata->location));

	FUNC15(ddata, REG_CTRL, REG_CTRL_EN |
			REG_CTRL_BITO_160PCC | 0 * REG_CTRL_GIBITO);

	FUNC15(ddata, REG_IFC, REG_IFC__MASK);
	FUNC15(ddata, REG_IEN, REG_IF_TXC | REG_IF_ACK | REG_IF_NACK
			| REG_IF_ARBLOST | REG_IF_BUSERR | REG_IF_RXDATAV);

	/* to make bus idle */
	FUNC15(ddata, REG_CMD, REG_CMD_ABORT);

	ret = FUNC24(ddata->irq, efm32_i2c_irq, 0, DRIVER_NAME, ddata);
	if (ret < 0) {
		FUNC9(&pdev->dev, "failed to request irq (%d)\n", ret);
		goto err_disable_clk;
	}

	ret = FUNC17(&ddata->adapter);
	if (ret) {
		FUNC16(ddata->irq, ddata);

err_disable_clk:
		FUNC5(ddata->clk);
	}
	return ret;
}