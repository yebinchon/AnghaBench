#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct xiic_i2c_platform_data {scalar_t__ num_devices; scalar_t__ devices; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct TYPE_19__ {TYPE_1__ dev; } ;
struct xiic_i2c {int /*<<< orphan*/  clk; TYPE_2__ adap; int /*<<< orphan*/  endianness; TYPE_3__* dev; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LITTLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XIIC_CR_REG_OFFSET ; 
 int /*<<< orphan*/  XIIC_CR_TX_FIFO_RESET_MASK ; 
 int /*<<< orphan*/  XIIC_PM_TIMEOUT ; 
 int /*<<< orphan*/  XIIC_SR_REG_OFFSET ; 
 int XIIC_SR_TX_FIFO_EMPTY_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 struct xiic_i2c_platform_data* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct resource*) ; 
 struct xiic_i2c* FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xiic_i2c*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct xiic_i2c*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct xiic_i2c*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 TYPE_2__ xiic_adapter ; 
 int /*<<< orphan*/  FUNC24 (struct xiic_i2c*) ; 
 int FUNC25 (struct xiic_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xiic_isr ; 
 int /*<<< orphan*/  xiic_process ; 
 int /*<<< orphan*/  FUNC26 (struct xiic_i2c*) ; 
 int /*<<< orphan*/  FUNC27 (struct xiic_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct xiic_i2c *i2c;
	struct xiic_i2c_platform_data *pdata;
	struct resource *res;
	int ret, irq;
	u8 i;
	u32 sr;

	i2c = FUNC8(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	i2c->base = FUNC7(&pdev->dev, res);
	if (FUNC0(i2c->base))
		return FUNC1(i2c->base);

	irq = FUNC15(pdev, 0);
	if (irq < 0)
		return irq;

	pdata = FUNC5(&pdev->dev);

	/* hook up driver to tree */
	FUNC17(pdev, i2c);
	i2c->adap = xiic_adapter;
	FUNC12(&i2c->adap, i2c);
	i2c->adap.dev.parent = &pdev->dev;
	i2c->adap.dev.of_node = pdev->dev.of_node;

	FUNC14(&i2c->lock);
	FUNC13(&i2c->wait);

	i2c->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(i2c->clk)) {
		FUNC4(&pdev->dev, "input clock not found.\n");
		return FUNC1(i2c->clk);
	}
	ret = FUNC3(i2c->clk);
	if (ret) {
		FUNC4(&pdev->dev, "Unable to enable clock.\n");
		return ret;
	}
	i2c->dev = &pdev->dev;
	FUNC19(i2c->dev);
	FUNC21(i2c->dev, XIIC_PM_TIMEOUT);
	FUNC23(i2c->dev);
	FUNC20(i2c->dev);
	ret = FUNC9(&pdev->dev, irq, xiic_isr,
					xiic_process, IRQF_ONESHOT,
					pdev->name, i2c);

	if (ret < 0) {
		FUNC4(&pdev->dev, "Cannot claim IRQ\n");
		goto err_clk_dis;
	}

	/*
	 * Detect endianness
	 * Try to reset the TX FIFO. Then check the EMPTY flag. If it is not
	 * set, assume that the endianness was wrong and swap.
	 */
	i2c->endianness = LITTLE;
	FUNC27(i2c, XIIC_CR_REG_OFFSET, XIIC_CR_TX_FIFO_RESET_MASK);
	/* Reset is cleared in xiic_reinit */
	sr = FUNC25(i2c, XIIC_SR_REG_OFFSET);
	if (!(sr & XIIC_SR_TX_FIFO_EMPTY_MASK))
		i2c->endianness = BIG;

	FUNC26(i2c);

	/* add i2c adapter to i2c tree */
	ret = FUNC10(&i2c->adap);
	if (ret) {
		FUNC24(i2c);
		goto err_clk_dis;
	}

	if (pdata) {
		/* add in known devices to the bus */
		for (i = 0; i < pdata->num_devices; i++)
			FUNC11(&i2c->adap, pdata->devices + i);
	}

	return 0;

err_clk_dis:
	FUNC22(&pdev->dev);
	FUNC18(&pdev->dev);
	FUNC2(i2c->clk);
	return ret;
}