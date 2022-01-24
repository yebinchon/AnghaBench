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
struct resource {int dummy; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct meson_i2c_data {int dummy; } ;
struct TYPE_10__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct TYPE_12__ {struct meson_i2c* algo_data; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct meson_i2c {int /*<<< orphan*/  clk; TYPE_4__ adap; int /*<<< orphan*/  regs; struct meson_i2c_data const* data; int /*<<< orphan*/  done; int /*<<< orphan*/  lock; TYPE_2__* dev; } ;
struct i2c_timings {int /*<<< orphan*/  bus_freq_hz; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_CTRL ; 
 int /*<<< orphan*/  REG_CTRL_START ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct resource*) ; 
 struct meson_i2c* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct meson_i2c*) ; 
 int FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct i2c_timings*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  meson_i2c_algorithm ; 
 int /*<<< orphan*/  meson_i2c_irq ; 
 int /*<<< orphan*/  FUNC12 (struct meson_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct meson_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct meson_i2c*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct meson_i2c *i2c;
	struct resource *mem;
	struct i2c_timings timings;
	int irq, ret = 0;

	i2c = FUNC7(&pdev->dev, sizeof(struct meson_i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	FUNC10(&pdev->dev, &timings, true);

	i2c->dev = &pdev->dev;
	FUNC17(pdev, i2c);

	FUNC18(&i2c->lock);
	FUNC11(&i2c->done);

	i2c->data = (const struct meson_i2c_data *)
		FUNC14(&pdev->dev);

	i2c->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(i2c->clk)) {
		FUNC4(&pdev->dev, "can't get device clock\n");
		return FUNC1(i2c->clk);
	}

	mem = FUNC16(pdev, IORESOURCE_MEM, 0);
	i2c->regs = FUNC6(&pdev->dev, mem);
	if (FUNC0(i2c->regs))
		return FUNC1(i2c->regs);

	irq = FUNC15(pdev, 0);
	if (irq < 0) {
		FUNC4(&pdev->dev, "can't find IRQ\n");
		return irq;
	}

	ret = FUNC8(&pdev->dev, irq, meson_i2c_irq, 0, NULL, i2c);
	if (ret < 0) {
		FUNC4(&pdev->dev, "can't request IRQ\n");
		return ret;
	}

	ret = FUNC2(i2c->clk);
	if (ret < 0) {
		FUNC4(&pdev->dev, "can't prepare clock\n");
		return ret;
	}

	FUNC19(i2c->adap.name, "Meson I2C adapter",
		sizeof(i2c->adap.name));
	i2c->adap.owner = THIS_MODULE;
	i2c->adap.algo = &meson_i2c_algorithm;
	i2c->adap.dev.parent = &pdev->dev;
	i2c->adap.dev.of_node = np;
	i2c->adap.algo_data = i2c;

	/*
	 * A transfer is triggered when START bit changes from 0 to 1.
	 * Ensure that the bit is set to 0 after probe
	 */
	FUNC13(i2c, REG_CTRL, REG_CTRL_START, 0);

	ret = FUNC9(&i2c->adap);
	if (ret < 0) {
		FUNC3(i2c->clk);
		return ret;
	}

	FUNC12(i2c, timings.bus_freq_hz);

	return 0;
}