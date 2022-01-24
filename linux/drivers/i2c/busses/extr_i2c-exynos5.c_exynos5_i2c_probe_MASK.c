#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_10__ {TYPE_2__* parent; struct device_node* of_node; } ;
struct TYPE_12__ {int retries; TYPE_1__ dev; struct exynos5_i2c* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct exynos5_i2c {int irq; int /*<<< orphan*/  clk; TYPE_3__ adap; int /*<<< orphan*/  variant; int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; TYPE_2__* dev; int /*<<< orphan*/  op_clock; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HSI2C_FS_TX_CLOCK ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct resource*) ; 
 struct exynos5_i2c* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct exynos5_i2c*) ; 
 int FUNC11 (struct exynos5_i2c*) ; 
 int /*<<< orphan*/  exynos5_i2c_algorithm ; 
 int /*<<< orphan*/  FUNC12 (struct exynos5_i2c*) ; 
 int /*<<< orphan*/  exynos5_i2c_irq ; 
 int /*<<< orphan*/  FUNC13 (struct exynos5_i2c*) ; 
 int FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct exynos5_i2c*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct exynos5_i2c *i2c;
	struct resource *mem;
	int ret;

	i2c = FUNC9(&pdev->dev, sizeof(struct exynos5_i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	if (FUNC17(np, "clock-frequency", &i2c->op_clock))
		i2c->op_clock = HSI2C_FS_TX_CLOCK;

	FUNC22(i2c->adap.name, "exynos5-i2c", sizeof(i2c->adap.name));
	i2c->adap.owner   = THIS_MODULE;
	i2c->adap.algo    = &exynos5_i2c_algorithm;
	i2c->adap.retries = 3;

	i2c->dev = &pdev->dev;
	i2c->clk = FUNC7(&pdev->dev, "hsi2c");
	if (FUNC0(i2c->clk)) {
		FUNC5(&pdev->dev, "cannot get clock\n");
		return -ENOENT;
	}

	ret = FUNC4(i2c->clk);
	if (ret)
		return ret;

	mem = FUNC19(pdev, IORESOURCE_MEM, 0);
	i2c->regs = FUNC8(&pdev->dev, mem);
	if (FUNC0(i2c->regs)) {
		ret = FUNC1(i2c->regs);
		goto err_clk;
	}

	i2c->adap.dev.of_node = np;
	i2c->adap.algo_data = i2c;
	i2c->adap.dev.parent = &pdev->dev;

	/* Clear pending interrupts from u-boot or misc causes */
	FUNC12(i2c);

	FUNC21(&i2c->lock);
	FUNC15(&i2c->msg_complete);

	i2c->irq = ret = FUNC18(pdev, 0);
	if (ret <= 0) {
		FUNC5(&pdev->dev, "cannot find HS-I2C IRQ\n");
		ret = -EINVAL;
		goto err_clk;
	}

	ret = FUNC10(&pdev->dev, i2c->irq, exynos5_i2c_irq,
			       IRQF_NO_SUSPEND, FUNC6(&pdev->dev), i2c);
	if (ret != 0) {
		FUNC5(&pdev->dev, "cannot request HS-I2C IRQ %d\n", i2c->irq);
		goto err_clk;
	}

	i2c->variant = FUNC16(&pdev->dev);

	ret = FUNC11(i2c);
	if (ret)
		goto err_clk;

	FUNC13(i2c);

	ret = FUNC14(&i2c->adap);
	if (ret < 0)
		goto err_clk;

	FUNC20(pdev, i2c);

	FUNC2(i2c->clk);

	return 0;

 err_clk:
	FUNC3(i2c->clk);
	return ret;
}