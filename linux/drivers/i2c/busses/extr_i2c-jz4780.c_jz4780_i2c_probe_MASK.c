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
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {char* name; TYPE_3__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct TYPE_11__ {int retries; int /*<<< orphan*/  name; TYPE_1__ dev; struct jz4780_i2c* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct jz4780_i2c {unsigned int speed; int /*<<< orphan*/  clk; TYPE_2__ adap; int /*<<< orphan*/  irq; int /*<<< orphan*/  iomem; int /*<<< orphan*/  lock; int /*<<< orphan*/  trans_waitq; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JZ4780_I2C_CTRL ; 
 unsigned short JZ4780_I2C_CTRL_STPHLD ; 
 int /*<<< orphan*/  JZ4780_I2C_INTM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct resource*) ; 
 struct jz4780_i2c* FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jz4780_i2c*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jz4780_i2c_algorithm ; 
 int /*<<< orphan*/  jz4780_i2c_irq ; 
 unsigned short FUNC13 (struct jz4780_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct jz4780_i2c*) ; 
 int /*<<< orphan*/  FUNC15 (struct jz4780_i2c*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct jz4780_i2c*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	int ret = 0;
	unsigned int clk_freq = 0;
	unsigned short tmp;
	struct resource *r;
	struct jz4780_i2c *i2c;

	i2c = FUNC9(&pdev->dev, sizeof(struct jz4780_i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	i2c->adap.owner		= THIS_MODULE;
	i2c->adap.algo		= &jz4780_i2c_algorithm;
	i2c->adap.algo_data	= i2c;
	i2c->adap.retries	= 5;
	i2c->adap.dev.parent	= &pdev->dev;
	i2c->adap.dev.of_node	= pdev->dev.of_node;
	FUNC21(i2c->adap.name, "%s", pdev->name);

	FUNC12(&i2c->trans_waitq);
	FUNC20(&i2c->lock);

	r = FUNC18(pdev, IORESOURCE_MEM, 0);
	i2c->iomem = FUNC8(&pdev->dev, r);
	if (FUNC0(i2c->iomem))
		return FUNC1(i2c->iomem);

	FUNC19(pdev, i2c);

	i2c->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(i2c->clk))
		return FUNC1(i2c->clk);

	ret = FUNC3(i2c->clk);
	if (ret)
		return ret;

	ret = FUNC16(pdev->dev.of_node, "clock-frequency",
				   &clk_freq);
	if (ret) {
		FUNC4(&pdev->dev, "clock-frequency not specified in DT\n");
		goto err;
	}

	i2c->speed = clk_freq / 1000;
	if (i2c->speed == 0) {
		ret = -EINVAL;
		FUNC4(&pdev->dev, "clock-frequency minimum is 1000\n");
		goto err;
	}
	FUNC14(i2c);

	FUNC5(&pdev->dev, "Bus frequency is %d KHz\n", i2c->speed);

	tmp = FUNC13(i2c, JZ4780_I2C_CTRL);
	tmp &= ~JZ4780_I2C_CTRL_STPHLD;
	FUNC15(i2c, JZ4780_I2C_CTRL, tmp);

	FUNC15(i2c, JZ4780_I2C_INTM, 0x0);

	i2c->irq = FUNC17(pdev, 0);
	ret = FUNC10(&pdev->dev, i2c->irq, jz4780_i2c_irq, 0,
			       FUNC6(&pdev->dev), i2c);
	if (ret)
		goto err;

	ret = FUNC11(&i2c->adap);
	if (ret < 0)
		goto err;

	return 0;

err:
	FUNC2(i2c->clk);
	return ret;
}