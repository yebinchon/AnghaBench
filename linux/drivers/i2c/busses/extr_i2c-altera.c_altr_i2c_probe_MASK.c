#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct resource {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; TYPE_4__* parent; } ;
struct TYPE_12__ {TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct altr_i2c_dev {int fifo_size; int bus_clk_rate; int /*<<< orphan*/  i2c_clk; TYPE_2__ adapter; TYPE_4__* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ALTR_I2C_DFLT_FIFO_SZ ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  altr_i2c_algo ; 
 int /*<<< orphan*/  FUNC2 (struct altr_i2c_dev*) ; 
 int /*<<< orphan*/  altr_i2c_isr ; 
 int /*<<< orphan*/  altr_i2c_isr_quick ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,struct resource*) ; 
 struct altr_i2c_dev* FUNC10 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct altr_i2c_dev*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct altr_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct altr_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct altr_i2c_dev *idev = NULL;
	struct resource *res;
	int irq, ret;
	u32 val;

	idev = FUNC10(&pdev->dev, sizeof(*idev), GFP_KERNEL);
	if (!idev)
		return -ENOMEM;

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	idev->base = FUNC9(&pdev->dev, res);
	if (FUNC0(idev->base))
		return FUNC1(idev->base);

	irq = FUNC15(pdev, 0);
	if (irq < 0) {
		FUNC5(&pdev->dev, "missing interrupt resource\n");
		return irq;
	}

	idev->i2c_clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(idev->i2c_clk)) {
		FUNC5(&pdev->dev, "missing clock\n");
		return FUNC1(idev->i2c_clk);
	}

	idev->dev = &pdev->dev;
	FUNC14(&idev->msg_complete);
	FUNC18(&idev->lock);

	val = FUNC7(idev->dev, "fifo-size",
				       &idev->fifo_size);
	if (val) {
		FUNC5(&pdev->dev, "FIFO size set to default of %d\n",
			ALTR_I2C_DFLT_FIFO_SZ);
		idev->fifo_size = ALTR_I2C_DFLT_FIFO_SZ;
	}

	val = FUNC7(idev->dev, "clock-frequency",
				       &idev->bus_clk_rate);
	if (val) {
		FUNC5(&pdev->dev, "Default to 100kHz\n");
		idev->bus_clk_rate = 100000;	/* default clock rate */
	}

	if (idev->bus_clk_rate > 400000) {
		FUNC5(&pdev->dev, "invalid clock-frequency %d\n",
			idev->bus_clk_rate);
		return -EINVAL;
	}

	ret = FUNC11(&pdev->dev, irq, altr_i2c_isr_quick,
					altr_i2c_isr, IRQF_ONESHOT,
					pdev->name, idev);
	if (ret) {
		FUNC5(&pdev->dev, "failed to claim IRQ %d\n", irq);
		return ret;
	}

	ret = FUNC4(idev->i2c_clk);
	if (ret) {
		FUNC5(&pdev->dev, "failed to enable clock\n");
		return ret;
	}

	FUNC2(idev);

	FUNC13(&idev->adapter, idev);
	FUNC19(idev->adapter.name, pdev->name, sizeof(idev->adapter.name));
	idev->adapter.owner = THIS_MODULE;
	idev->adapter.algo = &altr_i2c_algo;
	idev->adapter.dev.parent = &pdev->dev;
	idev->adapter.dev.of_node = pdev->dev.of_node;

	FUNC17(pdev, idev);

	ret = FUNC12(&idev->adapter);
	if (ret) {
		FUNC3(idev->i2c_clk);
		return ret;
	}
	FUNC6(&pdev->dev, "Altera SoftIP I2C Probe Complete\n");

	return 0;
}