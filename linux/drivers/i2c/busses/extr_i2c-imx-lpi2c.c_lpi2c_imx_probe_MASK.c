#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_16__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_19__ {int /*<<< orphan*/  of_node; TYPE_1__* parent; } ;
struct TYPE_18__ {TYPE_16__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct lpi2c_imx_struct {int txfifosize; int rxfifosize; TYPE_11__ adapter; scalar_t__ base; scalar_t__ clk; int /*<<< orphan*/  bitrate; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_PM_TIMEOUT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  LPI2C_DEFAULT_RATE ; 
 scalar_t__ LPI2C_PARAM ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_16__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct lpi2c_imx_struct* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpi2c_imx_struct*) ; 
 int FUNC9 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_11__*,struct lpi2c_imx_struct*) ; 
 int /*<<< orphan*/  lpi2c_imx_algo ; 
 int /*<<< orphan*/  lpi2c_imx_isr ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct lpi2c_imx_struct*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 unsigned int FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct lpi2c_imx_struct *lpi2c_imx;
	unsigned int temp;
	int irq, ret;

	lpi2c_imx = FUNC6(&pdev->dev, sizeof(*lpi2c_imx), GFP_KERNEL);
	if (!lpi2c_imx)
		return -ENOMEM;

	lpi2c_imx->base = FUNC7(pdev, 0);
	if (FUNC0(lpi2c_imx->base))
		return FUNC1(lpi2c_imx->base);

	irq = FUNC12(pdev, 0);
	if (irq < 0) {
		FUNC3(&pdev->dev, "can't get irq number\n");
		return irq;
	}

	lpi2c_imx->adapter.owner	= THIS_MODULE;
	lpi2c_imx->adapter.algo		= &lpi2c_imx_algo;
	lpi2c_imx->adapter.dev.parent	= &pdev->dev;
	lpi2c_imx->adapter.dev.of_node	= pdev->dev.of_node;
	FUNC25(lpi2c_imx->adapter.name, pdev->name,
		sizeof(lpi2c_imx->adapter.name));

	lpi2c_imx->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(lpi2c_imx->clk)) {
		FUNC3(&pdev->dev, "can't get I2C peripheral clock\n");
		return FUNC1(lpi2c_imx->clk);
	}

	ret = FUNC11(pdev->dev.of_node,
				   "clock-frequency", &lpi2c_imx->bitrate);
	if (ret)
		lpi2c_imx->bitrate = LPI2C_DEFAULT_RATE;

	ret = FUNC8(&pdev->dev, irq, lpi2c_imx_isr, 0,
			       pdev->name, lpi2c_imx);
	if (ret) {
		FUNC3(&pdev->dev, "can't claim irq %d\n", irq);
		return ret;
	}

	FUNC10(&lpi2c_imx->adapter, lpi2c_imx);
	FUNC13(pdev, lpi2c_imx);

	ret = FUNC2(lpi2c_imx->clk);
	if (ret) {
		FUNC3(&pdev->dev, "clk enable failed %d\n", ret);
		return ret;
	}

	FUNC22(&pdev->dev, I2C_PM_TIMEOUT);
	FUNC23(&pdev->dev);
	FUNC17(&pdev->dev);
	FUNC21(&pdev->dev);
	FUNC16(&pdev->dev);

	temp = FUNC24(lpi2c_imx->base + LPI2C_PARAM);
	lpi2c_imx->txfifosize = 1 << (temp & 0x0f);
	lpi2c_imx->rxfifosize = 1 << ((temp >> 8) & 0x0f);

	ret = FUNC9(&lpi2c_imx->adapter);
	if (ret)
		goto rpm_disable;

	FUNC18(&pdev->dev);
	FUNC20(&pdev->dev);

	FUNC4(&lpi2c_imx->adapter.dev, "LPI2C adapter registered\n");

	return 0;

rpm_disable:
	FUNC19(&pdev->dev);
	FUNC14(&pdev->dev);
	FUNC15(&pdev->dev);

	return ret;
}