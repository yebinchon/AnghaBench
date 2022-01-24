#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ of_node; struct TYPE_16__* parent; } ;
struct TYPE_18__ {int retries; TYPE_1__ dev; int /*<<< orphan*/  nr; struct s3c24xx_i2c* algo_data; int /*<<< orphan*/  class; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct s3c24xx_i2c {int quirks; int tx_setup; int irq; TYPE_5__ adap; int /*<<< orphan*/  clk; TYPE_4__* pdata; int /*<<< orphan*/  pctrl; TYPE_1__* dev; int /*<<< orphan*/  regs; int /*<<< orphan*/  wait; int /*<<< orphan*/  sysreg; } ;
struct s3c2410_platform_i2c {int dummy; } ;
struct resource {int dummy; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_17__ {int /*<<< orphan*/  bus_num; int /*<<< orphan*/  (* cfg_gpio ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DEPRECATED ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int QUIRK_POLL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 struct s3c2410_platform_i2c* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct resource*) ; 
 void* FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s3c24xx_i2c*) ; 
 int FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,struct s3c2410_platform_i2c*,int) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int FUNC24 (struct platform_device*) ; 
 int /*<<< orphan*/  s3c24xx_i2c_algorithm ; 
 int /*<<< orphan*/  FUNC25 (struct s3c24xx_i2c*) ; 
 int FUNC26 (struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  s3c24xx_i2c_irq ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,struct s3c24xx_i2c*) ; 
 scalar_t__ FUNC28 (struct s3c24xx_i2c*) ; 
 int FUNC29 (struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC33(struct platform_device *pdev)
{
	struct s3c24xx_i2c *i2c;
	struct s3c2410_platform_i2c *pdata = NULL;
	struct resource *res;
	int ret;

	if (!pdev->dev.of_node) {
		pdata = FUNC8(&pdev->dev);
		if (!pdata) {
			FUNC7(&pdev->dev, "no platform data\n");
			return -EINVAL;
		}
	}

	i2c = FUNC13(&pdev->dev, sizeof(struct s3c24xx_i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	i2c->pdata = FUNC13(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!i2c->pdata)
		return -ENOMEM;

	i2c->quirks = FUNC24(pdev);
	i2c->sysreg = FUNC0(-ENOENT);
	if (pdata)
		FUNC18(i2c->pdata, pdata, sizeof(*pdata));
	else
		FUNC27(pdev->dev.of_node, i2c);

	FUNC30(i2c->adap.name, "s3c2410-i2c", sizeof(i2c->adap.name));
	i2c->adap.owner = THIS_MODULE;
	i2c->adap.algo = &s3c24xx_i2c_algorithm;
	i2c->adap.retries = 2;
	i2c->adap.class = I2C_CLASS_DEPRECATED;
	i2c->tx_setup = 50;

	FUNC17(&i2c->wait);

	/* find the clock and enable it */
	i2c->dev = &pdev->dev;
	i2c->clk = FUNC11(&pdev->dev, "i2c");
	if (FUNC1(i2c->clk)) {
		FUNC7(&pdev->dev, "cannot get clock\n");
		return -ENOENT;
	}

	FUNC6(&pdev->dev, "clock source %p\n", i2c->clk);

	/* map the registers */
	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	i2c->regs = FUNC12(&pdev->dev, res);

	if (FUNC1(i2c->regs))
		return FUNC2(i2c->regs);

	FUNC6(&pdev->dev, "registers %p (%p)\n",
		i2c->regs, res);

	/* setup info block for the i2c core */
	i2c->adap.algo_data = i2c;
	i2c->adap.dev.parent = &pdev->dev;
	i2c->pctrl = FUNC14(i2c->dev);

	/* inititalise the i2c gpio lines */
	if (i2c->pdata->cfg_gpio)
		i2c->pdata->cfg_gpio(FUNC32(i2c->dev));
	else if (FUNC1(i2c->pctrl) && FUNC28(i2c))
		return -EINVAL;

	/* initialise the i2c controller */
	ret = FUNC4(i2c->clk);
	if (ret) {
		FUNC7(&pdev->dev, "I2C clock enable failed\n");
		return ret;
	}

	ret = FUNC26(i2c);
	FUNC3(i2c->clk);
	if (ret != 0) {
		FUNC7(&pdev->dev, "I2C controller init failed\n");
		FUNC5(i2c->clk);
		return ret;
	}

	/*
	 * find the IRQ for this unit (note, this relies on the init call to
	 * ensure no current IRQs pending
	 */
	if (!(i2c->quirks & QUIRK_POLL)) {
		i2c->irq = ret = FUNC19(pdev, 0);
		if (ret <= 0) {
			FUNC7(&pdev->dev, "cannot find IRQ\n");
			FUNC5(i2c->clk);
			return ret;
		}

		ret = FUNC15(&pdev->dev, i2c->irq, s3c24xx_i2c_irq,
				       0, FUNC10(&pdev->dev), i2c);
		if (ret != 0) {
			FUNC7(&pdev->dev, "cannot claim IRQ %d\n", i2c->irq);
			FUNC5(i2c->clk);
			return ret;
		}
	}

	ret = FUNC29(i2c);
	if (ret < 0) {
		FUNC7(&pdev->dev, "failed to register cpufreq notifier\n");
		FUNC5(i2c->clk);
		return ret;
	}

	/*
	 * Note, previous versions of the driver used i2c_add_adapter()
	 * to add the bus at any number. We now pass the bus number via
	 * the platform data, so if unset it will now default to always
	 * being bus 0.
	 */
	i2c->adap.nr = i2c->pdata->bus_num;
	i2c->adap.dev.of_node = pdev->dev.of_node;

	FUNC21(pdev, i2c);

	FUNC23(&pdev->dev);

	ret = FUNC16(&i2c->adap);
	if (ret < 0) {
		FUNC22(&pdev->dev);
		FUNC25(i2c);
		FUNC5(i2c->clk);
		return ret;
	}

	FUNC9(&pdev->dev, "%s: S3C I2C adapter\n", FUNC10(&i2c->adap.dev));
	return 0;
}