#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct i2c_adapter {int retries; int /*<<< orphan*/  name; int /*<<< orphan*/ * quirks; int /*<<< orphan*/ * bus_recovery_info; TYPE_1__ dev; int /*<<< orphan*/  class; int /*<<< orphan*/ * algo; int /*<<< orphan*/  nr; } ;
struct rcar_i2c_priv {int devtype; int /*<<< orphan*/  irq; int /*<<< orphan*/  flags; void* rstc; void* dma_tx; void* dma_rx; int /*<<< orphan*/  dma_direction; int /*<<< orphan*/  sg; struct i2c_adapter adap; int /*<<< orphan*/  wait; void* io; int /*<<< orphan*/  res; void* clk; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct i2c_timings {int dummy; } ;
typedef  enum rcar_i2c_type { ____Placeholder_rcar_i2c_type } rcar_i2c_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ENOTSUPP ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DEPRECATED ; 
 scalar_t__ I2C_RCAR_GEN3 ; 
 int /*<<< orphan*/  ID_P_PM_BLOCKED ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int RCAR_MIN_DMA_LEN ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 void* FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 struct rcar_i2c_priv* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rcar_i2c_priv*) ; 
 void* FUNC11 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,struct i2c_timings*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_adapter*,struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct device*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  rcar_i2c_algo ; 
 int /*<<< orphan*/  rcar_i2c_bri ; 
 int FUNC25 (struct rcar_i2c_priv*,struct i2c_timings*) ; 
 int /*<<< orphan*/  rcar_i2c_irq ; 
 int /*<<< orphan*/  rcar_i2c_quirks ; 
 int FUNC26 (void*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct rcar_i2c_priv *priv;
	struct i2c_adapter *adap;
	struct device *dev = &pdev->dev;
	struct i2c_timings i2c_t;
	int ret;

	/* Otherwise logic will break because some bytes must always use PIO */
	FUNC0(RCAR_MIN_DMA_LEN < 3, "Invalid min DMA length");

	priv = FUNC9(dev, sizeof(struct rcar_i2c_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->clk = FUNC7(dev, NULL);
	if (FUNC2(priv->clk)) {
		FUNC4(dev, "cannot get clock\n");
		return FUNC3(priv->clk);
	}

	priv->res = FUNC19(pdev, IORESOURCE_MEM, 0);

	priv->io = FUNC8(dev, priv->res);
	if (FUNC2(priv->io))
		return FUNC3(priv->io);

	priv->devtype = (enum rcar_i2c_type)FUNC16(dev);
	FUNC15(&priv->wait);

	adap = &priv->adap;
	adap->nr = pdev->id;
	adap->algo = &rcar_i2c_algo;
	adap->class = I2C_CLASS_DEPRECATED;
	adap->retries = 3;
	adap->dev.parent = dev;
	adap->dev.of_node = dev->of_node;
	adap->bus_recovery_info = &rcar_i2c_bri;
	adap->quirks = &rcar_i2c_quirks;
	FUNC14(adap, priv);
	FUNC28(adap->name, pdev->name, sizeof(adap->name));

	FUNC13(dev, &i2c_t, false);

	/* Init DMA */
	FUNC27(&priv->sg, 1);
	priv->dma_direction = DMA_NONE;
	priv->dma_rx = priv->dma_tx = FUNC1(-EPROBE_DEFER);

	/* Activate device for clock calculation */
	FUNC22(dev);
	FUNC23(dev);
	ret = FUNC25(priv, &i2c_t);
	if (ret < 0)
		goto out_pm_put;

	if (priv->devtype == I2C_RCAR_GEN3) {
		priv->rstc = FUNC11(&pdev->dev, NULL);
		if (!FUNC2(priv->rstc)) {
			ret = FUNC26(priv->rstc);
			if (ret < 0)
				priv->rstc = FUNC1(-ENOTSUPP);
		}
	}

	/* Stay always active when multi-master to keep arbitration working */
	if (FUNC17(dev->of_node, "multi-master"))
		priv->flags |= ID_P_PM_BLOCKED;
	else
		FUNC24(dev);


	priv->irq = FUNC18(pdev, 0);
	ret = FUNC10(dev, priv->irq, rcar_i2c_irq, 0, FUNC6(dev), priv);
	if (ret < 0) {
		FUNC4(dev, "cannot get irq %d\n", priv->irq);
		goto out_pm_disable;
	}

	FUNC20(pdev, priv);

	ret = FUNC12(adap);
	if (ret < 0)
		goto out_pm_disable;

	FUNC5(dev, "probed\n");

	return 0;

 out_pm_put:
	FUNC24(dev);
 out_pm_disable:
	FUNC21(dev);
	return ret;
}