#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_23__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_25__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_28__ {TYPE_1__* dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; int /*<<< orphan*/  wrapper; } ;
struct TYPE_26__ {int /*<<< orphan*/  of_node; TYPE_1__* parent; } ;
struct TYPE_27__ {int /*<<< orphan*/  name; TYPE_23__ dev; int /*<<< orphan*/ * algo; } ;
struct geni_i2c_dev {int irq; int tx_wm; int suspended; TYPE_9__ se; TYPE_6__ adap; int /*<<< orphan*/  lock; int /*<<< orphan*/  done; int /*<<< orphan*/  clk_freq_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_23__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BITS_PER_BYTE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int GENI_SE_I2C ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_AUTO_SUSPEND_DELAY ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  PACKING_BYTES_PW ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct resource*) ; 
 struct geni_i2c_dev* FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct geni_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  geni_i2c_algo ; 
 int FUNC15 (struct geni_i2c_dev*) ; 
 int /*<<< orphan*/  geni_i2c_irq ; 
 int /*<<< orphan*/  FUNC16 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC17 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_9__*,int,int) ; 
 int FUNC19 (TYPE_9__*) ; 
 int FUNC20 (TYPE_9__*) ; 
 int FUNC21 (TYPE_9__*) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 int FUNC23 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_6__*,struct geni_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC27 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct platform_device*,struct geni_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC36(struct platform_device *pdev)
{
	struct geni_i2c_dev *gi2c;
	struct resource *res;
	u32 proto, tx_depth;
	int ret;

	gi2c = FUNC12(&pdev->dev, sizeof(*gi2c), GFP_KERNEL);
	if (!gi2c)
		return -ENOMEM;

	gi2c->se.dev = &pdev->dev;
	gi2c->se.wrapper = FUNC7(pdev->dev.parent);
	res = FUNC27(pdev, IORESOURCE_MEM, 0);
	gi2c->se.base = FUNC11(&pdev->dev, res);
	if (FUNC2(gi2c->se.base))
		return FUNC4(gi2c->se.base);

	gi2c->se.clk = FUNC10(&pdev->dev, "se");
	if (FUNC2(gi2c->se.clk) && !FUNC22(&pdev->dev)) {
		ret = FUNC4(gi2c->se.clk);
		FUNC6(&pdev->dev, "Err getting SE Core clk %d\n", ret);
		return ret;
	}

	ret = FUNC9(&pdev->dev, "clock-frequency",
							&gi2c->clk_freq_out);
	if (ret) {
		FUNC8(&pdev->dev,
			"Bus frequency not specified, default to 100kHz.\n");
		gi2c->clk_freq_out = FUNC3(100);
	}

	if (FUNC22(&pdev->dev))
		FUNC1(&gi2c->adap.dev, FUNC0(&pdev->dev));

	gi2c->irq = FUNC26(pdev, 0);
	if (gi2c->irq < 0) {
		FUNC6(&pdev->dev, "IRQ error for i2c-geni\n");
		return gi2c->irq;
	}

	ret = FUNC15(gi2c);
	if (ret) {
		FUNC6(&pdev->dev, "Invalid clk frequency %d Hz: %d\n",
			gi2c->clk_freq_out, ret);
		return ret;
	}

	gi2c->adap.algo = &geni_i2c_algo;
	FUNC25(&gi2c->done);
	FUNC34(&gi2c->lock);
	FUNC28(pdev, gi2c);
	ret = FUNC13(&pdev->dev, gi2c->irq, geni_i2c_irq,
			       IRQF_TRIGGER_HIGH, "i2c_geni", gi2c);
	if (ret) {
		FUNC6(&pdev->dev, "Request_irq failed:%d: err:%d\n",
			gi2c->irq, ret);
		return ret;
	}
	/* Disable the interrupt so that the system can enter low-power mode */
	FUNC14(gi2c->irq);
	FUNC24(&gi2c->adap, gi2c);
	gi2c->adap.dev.parent = &pdev->dev;
	gi2c->adap.dev.of_node = pdev->dev.of_node;
	FUNC35(gi2c->adap.name, "Geni-I2C", sizeof(gi2c->adap.name));

	ret = FUNC21(&gi2c->se);
	if (ret) {
		FUNC6(&pdev->dev, "Error turning on resources %d\n", ret);
		return ret;
	}
	proto = FUNC19(&gi2c->se);
	tx_depth = FUNC17(&gi2c->se);
	if (proto != GENI_SE_I2C) {
		FUNC6(&pdev->dev, "Invalid proto %d\n", proto);
		FUNC20(&gi2c->se);
		return -ENXIO;
	}
	gi2c->tx_wm = tx_depth - 1;
	FUNC18(&gi2c->se, gi2c->tx_wm, tx_depth);
	FUNC16(&gi2c->se, BITS_PER_BYTE, PACKING_BYTES_PW,
							true, true, true);
	ret = FUNC20(&gi2c->se);
	if (ret) {
		FUNC6(&pdev->dev, "Error turning off resources %d\n", ret);
		return ret;
	}

	FUNC5(&pdev->dev, "i2c fifo/se-dma mode. fifo depth:%d\n", tx_depth);

	gi2c->suspended = 1;
	FUNC32(gi2c->se.dev);
	FUNC31(gi2c->se.dev, I2C_AUTO_SUSPEND_DELAY);
	FUNC33(gi2c->se.dev);
	FUNC30(gi2c->se.dev);

	ret = FUNC23(&gi2c->adap);
	if (ret) {
		FUNC6(&pdev->dev, "Error adding i2c adapter %d\n", ret);
		FUNC29(gi2c->se.dev);
		return ret;
	}

	FUNC5(&pdev->dev, "Geni-I2C adaptor successfully added\n");

	return 0;
}