#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_18__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_17__ {TYPE_2__* parent; struct device_node* of_node; } ;
struct TYPE_19__ {int retries; TYPE_1__ dev; struct hix5hd2_i2c_priv* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct hix5hd2_i2c_priv {int freq; int /*<<< orphan*/  clk; TYPE_2__* dev; TYPE_8__ adap; int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HIX5I2C_MAX_FREQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSEC_PER_SEC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct resource*) ; 
 struct hix5hd2_i2c_priv* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hix5hd2_i2c_priv*) ; 
 int /*<<< orphan*/  hix5hd2_i2c_algorithm ; 
 int /*<<< orphan*/  FUNC11 (struct hix5hd2_i2c_priv*) ; 
 int /*<<< orphan*/  hix5hd2_i2c_irq ; 
 int FUNC12 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,struct hix5hd2_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct device_node*,char*,unsigned int*) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct hix5hd2_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct hix5hd2_i2c_priv *priv;
	struct resource *mem;
	unsigned int freq;
	int irq, ret;

	priv = FUNC9(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	if (FUNC15(np, "clock-frequency", &freq)) {
		/* use 100k as default value */
		priv->freq = 100000;
	} else {
		if (freq > HIX5I2C_MAX_FREQ) {
			priv->freq = HIX5I2C_MAX_FREQ;
			FUNC6(priv->dev, "use max freq %d instead\n",
				 HIX5I2C_MAX_FREQ);
		} else {
			priv->freq = freq;
		}
	}

	mem = FUNC17(pdev, IORESOURCE_MEM, 0);
	priv->regs = FUNC8(&pdev->dev, mem);
	if (FUNC0(priv->regs))
		return FUNC1(priv->regs);

	irq = FUNC16(pdev, 0);
	if (irq <= 0) {
		FUNC4(&pdev->dev, "cannot find HS-I2C IRQ\n");
		return irq;
	}

	priv->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(priv->clk)) {
		FUNC4(&pdev->dev, "cannot get clock\n");
		return FUNC1(priv->clk);
	}
	FUNC3(priv->clk);

	FUNC26(priv->adap.name, "hix5hd2-i2c", sizeof(priv->adap.name));
	priv->dev = &pdev->dev;
	priv->adap.owner = THIS_MODULE;
	priv->adap.algo = &hix5hd2_i2c_algorithm;
	priv->adap.retries = 3;
	priv->adap.dev.of_node = np;
	priv->adap.algo_data = priv;
	priv->adap.dev.parent = &pdev->dev;
	FUNC13(&priv->adap, priv);
	FUNC18(pdev, priv);
	FUNC25(&priv->lock);
	FUNC14(&priv->msg_complete);

	FUNC11(priv);

	ret = FUNC10(&pdev->dev, irq, hix5hd2_i2c_irq,
			       IRQF_NO_SUSPEND, FUNC5(&pdev->dev), priv);
	if (ret != 0) {
		FUNC4(&pdev->dev, "cannot request HS-I2C IRQ %d\n", irq);
		goto err_clk;
	}

	FUNC22(priv->dev, MSEC_PER_SEC);
	FUNC24(priv->dev);
	FUNC21(priv->dev);
	FUNC20(priv->dev);

	ret = FUNC12(&priv->adap);
	if (ret < 0)
		goto err_runtime;

	return ret;

err_runtime:
	FUNC19(priv->dev);
	FUNC23(priv->dev);
err_clk:
	FUNC2(priv->clk);
	return ret;
}