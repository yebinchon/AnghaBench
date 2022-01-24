#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct TYPE_14__ {TYPE_10__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  class; int /*<<< orphan*/  nr; int /*<<< orphan*/ * quirks; int /*<<< orphan*/ * algo; struct xlr_i2c_private* algo_data; int /*<<< orphan*/  owner; } ;
struct xlr_i2c_private {int irq; TYPE_3__ adap; struct clk* clk; struct clk* iobase; int /*<<< orphan*/  wait; TYPE_1__* cfg; } ;
struct resource {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_2__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct clk {int dummy; } ;
struct TYPE_12__ {int flags; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  XLR_I2C_CLKDIV ; 
 int XLR_I2C_FLAG_IRQ ; 
 int /*<<< orphan*/  XLR_I2C_INT_EN ; 
 int /*<<< orphan*/  XLR_I2C_INT_STAT ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 unsigned long FUNC4 (struct clk*) ; 
 int FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 struct clk* FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct clk* FUNC9 (TYPE_2__*,struct resource*) ; 
 struct xlr_i2c_private* FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xlr_i2c_private*) ; 
 int FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,struct xlr_i2c_private*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC15 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct xlr_i2c_private*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  xlr_i2c_algo ; 
 TYPE_1__ xlr_i2c_config_default ; 
 int /*<<< orphan*/  xlr_i2c_dt_ids ; 
 int /*<<< orphan*/  xlr_i2c_irq ; 
 int /*<<< orphan*/  xlr_i2c_quirks ; 
 int /*<<< orphan*/  FUNC21 (struct clk*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct xlr_i2c_private  *priv;
	struct resource *res;
	struct clk *clk;
	unsigned long clk_rate;
	unsigned long clk_div;
	u32 busfreq;
	int irq;
	int ret;

	priv = FUNC10(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	match = FUNC15(xlr_i2c_dt_ids, &pdev->dev);
	if (match)
		priv->cfg = match->data;
	else
		priv->cfg = &xlr_i2c_config_default;

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	priv->iobase = FUNC9(&pdev->dev, res);
	if (FUNC1(priv->iobase))
		return FUNC2(priv->iobase);

	irq = FUNC17(pdev, 0);

	if (irq > 0 && (priv->cfg->flags & XLR_I2C_FLAG_IRQ)) {
		priv->irq = irq;

		FUNC21(priv->iobase, XLR_I2C_INT_EN, 0);
		FUNC21(priv->iobase, XLR_I2C_INT_STAT, 0xf);

		ret = FUNC11(&pdev->dev, priv->irq, xlr_i2c_irq,
					IRQF_SHARED, FUNC7(&pdev->dev),
					priv);
		if (ret)
			return ret;

		FUNC14(&priv->wait);
	}

	if (FUNC16(pdev->dev.of_node, "clock-frequency",
				 &busfreq))
		busfreq = 100000;

	clk = FUNC8(&pdev->dev, NULL);
	if (!FUNC1(clk)) {
		ret = FUNC5(clk);
		if (ret)
			return ret;

		clk_rate = FUNC4(clk);
		clk_div = FUNC0(clk_rate, 2 * busfreq);
		FUNC21(priv->iobase, XLR_I2C_CLKDIV, clk_div);

		FUNC3(clk);
		priv->clk = clk;
	}

	priv->adap.dev.parent = &pdev->dev;
	priv->adap.dev.of_node	= pdev->dev.of_node;
	priv->adap.owner	= THIS_MODULE;
	priv->adap.algo_data	= priv;
	priv->adap.algo		= &xlr_i2c_algo;
	priv->adap.quirks	= &xlr_i2c_quirks;
	priv->adap.nr		= pdev->id;
	priv->adap.class	= I2C_CLASS_HWMON;
	FUNC20(priv->adap.name, sizeof(priv->adap.name), "xlr-i2c");

	FUNC13(&priv->adap, priv);
	ret = FUNC12(&priv->adap);
	if (ret < 0)
		return ret;

	FUNC19(pdev, priv);
	FUNC6(&priv->adap.dev, "Added I2C Bus.\n");
	return 0;
}