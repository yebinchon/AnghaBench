#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; TYPE_3__* parent; } ;
struct TYPE_9__ {struct dc_i2c* algo_data; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct dc_i2c {int /*<<< orphan*/  clk; TYPE_2__ adap; int /*<<< orphan*/  regs; int /*<<< orphan*/  done; int /*<<< orphan*/  lock; TYPE_3__* dev; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_FREQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dc_i2c_algorithm ; 
 int FUNC4 (struct dc_i2c*) ; 
 int /*<<< orphan*/  dc_i2c_irq ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct resource*) ; 
 struct dc_i2c* FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dc_i2c*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct dc_i2c*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct dc_i2c *i2c;
	struct resource *r;
	int ret = 0, irq;

	i2c = FUNC8(&pdev->dev, sizeof(struct dc_i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	if (FUNC12(pdev->dev.of_node, "clock-frequency",
				 &i2c->frequency))
		i2c->frequency = DEFAULT_FREQ;

	i2c->dev = &pdev->dev;
	FUNC15(pdev, i2c);

	FUNC16(&i2c->lock);
	FUNC11(&i2c->done);

	i2c->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(i2c->clk))
		return FUNC1(i2c->clk);

	r = FUNC14(pdev, IORESOURCE_MEM, 0);
	i2c->regs = FUNC7(&pdev->dev, r);
	if (FUNC0(i2c->regs))
		return FUNC1(i2c->regs);

	irq = FUNC13(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC9(&pdev->dev, irq, dc_i2c_irq, 0,
			       FUNC5(&pdev->dev), i2c);
	if (ret < 0)
		return ret;

	FUNC17(i2c->adap.name, "Conexant Digicolor I2C adapter",
		sizeof(i2c->adap.name));
	i2c->adap.owner = THIS_MODULE;
	i2c->adap.algo = &dc_i2c_algorithm;
	i2c->adap.dev.parent = &pdev->dev;
	i2c->adap.dev.of_node = np;
	i2c->adap.algo_data = i2c;

	ret = FUNC4(i2c);
	if (ret)
		return ret;

	ret = FUNC3(i2c->clk);
	if (ret < 0)
		return ret;

	ret = FUNC10(&i2c->adap);
	if (ret < 0) {
		FUNC2(i2c->clk);
		return ret;
	}

	return 0;
}