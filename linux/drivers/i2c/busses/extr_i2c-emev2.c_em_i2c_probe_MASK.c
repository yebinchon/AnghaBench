#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; TYPE_5__* parent; } ;
struct TYPE_11__ {int retries; int /*<<< orphan*/  nr; TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/ * algo; int /*<<< orphan*/  timeout; int /*<<< orphan*/  name; } ;
struct em_i2c_device {int /*<<< orphan*/  sclk; int /*<<< orphan*/  irq; TYPE_2__ adap; int /*<<< orphan*/  msg_done; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,struct resource*) ; 
 struct em_i2c_device* FUNC7 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct em_i2c_device*) ; 
 int /*<<< orphan*/  em_i2c_algo ; 
 int /*<<< orphan*/  em_i2c_irq_handler ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct em_i2c_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct em_i2c_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct em_i2c_device *priv;
	struct resource *r;
	int ret;

	priv = FUNC7(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	r = FUNC15(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC6(&pdev->dev, r);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	FUNC17(priv->adap.name, "EMEV2 I2C", sizeof(priv->adap.name));

	priv->sclk = FUNC5(&pdev->dev, "sclk");
	if (FUNC0(priv->sclk))
		return FUNC1(priv->sclk);

	ret = FUNC3(priv->sclk);
	if (ret)
		return ret;

	priv->adap.timeout = FUNC13(100);
	priv->adap.retries = 5;
	priv->adap.dev.parent = &pdev->dev;
	priv->adap.algo = &em_i2c_algo;
	priv->adap.owner = THIS_MODULE;
	priv->adap.dev.of_node = pdev->dev.of_node;

	FUNC12(&priv->msg_done);

	FUNC16(pdev, priv);
	FUNC11(&priv->adap, priv);

	FUNC9(&priv->adap);

	priv->irq = FUNC14(pdev, 0);
	ret = FUNC8(&pdev->dev, priv->irq, em_i2c_irq_handler, 0,
				"em_i2c", priv);
	if (ret)
		goto err_clk;

	ret = FUNC10(&priv->adap);

	if (ret)
		goto err_clk;

	FUNC4(&pdev->dev, "Added i2c controller %d, irq %d\n", priv->adap.nr,
		 priv->irq);

	return 0;

err_clk:
	FUNC2(priv->sclk);
	return ret;
}