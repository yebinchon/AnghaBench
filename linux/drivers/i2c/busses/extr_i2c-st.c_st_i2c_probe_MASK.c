#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_9__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int timeout; int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * bus_recovery_info; int /*<<< orphan*/ * algo; scalar_t__ retries; int /*<<< orphan*/  owner; } ;
struct st_i2c_dev {TYPE_2__* dev; int /*<<< orphan*/  complete; struct i2c_adapter adap; int /*<<< orphan*/  irq; int /*<<< orphan*/  mode; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  I2C_MODE_FAST ; 
 int /*<<< orphan*/  I2C_MODE_STANDARD ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct resource*) ; 
 struct st_i2c_dev* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct st_i2c_dev*) ; 
 int FUNC7 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*) ; 
 int FUNC12 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st_i2c_algo ; 
 int /*<<< orphan*/  st_i2c_isr_thread ; 
 int FUNC18 (struct device_node*,struct st_i2c_dev*) ; 
 int /*<<< orphan*/  st_i2c_recovery_info ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct st_i2c_dev *i2c_dev;
	struct resource *res;
	u32 clk_rate;
	struct i2c_adapter *adap;
	int ret;

	i2c_dev = FUNC5(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
	if (!i2c_dev)
		return -ENOMEM;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	i2c_dev->base = FUNC4(&pdev->dev, res);
	if (FUNC0(i2c_dev->base))
		return FUNC1(i2c_dev->base);

	i2c_dev->irq = FUNC10(np, 0);
	if (!i2c_dev->irq) {
		FUNC2(&pdev->dev, "IRQ missing or invalid\n");
		return -EINVAL;
	}

	i2c_dev->clk = FUNC11(np, "ssc");
	if (FUNC0(i2c_dev->clk)) {
		FUNC2(&pdev->dev, "Unable to request clock\n");
		return FUNC1(i2c_dev->clk);
	}

	i2c_dev->mode = I2C_MODE_STANDARD;
	ret = FUNC12(np, "clock-frequency", &clk_rate);
	if ((!ret) && (clk_rate == 400000))
		i2c_dev->mode = I2C_MODE_FAST;

	i2c_dev->dev = &pdev->dev;

	ret = FUNC6(&pdev->dev, i2c_dev->irq,
			NULL, st_i2c_isr_thread,
			IRQF_ONESHOT, pdev->name, i2c_dev);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to request irq %i\n", i2c_dev->irq);
		return ret;
	}

	FUNC13(i2c_dev->dev);
	/* In case idle state available, select it */
	FUNC14(i2c_dev->dev);

	ret = FUNC18(np, i2c_dev);
	if (ret)
		return ret;

	adap = &i2c_dev->adap;
	FUNC8(adap, i2c_dev);
	FUNC17(adap->name, sizeof(adap->name), "ST I2C(%pa)", &res->start);
	adap->owner = THIS_MODULE;
	adap->timeout = 2 * HZ;
	adap->retries = 0;
	adap->algo = &st_i2c_algo;
	adap->bus_recovery_info = &st_i2c_recovery_info;
	adap->dev.parent = &pdev->dev;
	adap->dev.of_node = pdev->dev.of_node;

	FUNC9(&i2c_dev->complete);

	ret = FUNC7(adap);
	if (ret)
		return ret;

	FUNC16(pdev, i2c_dev);

	FUNC3(i2c_dev->dev, "%s initialized\n", adap->name);

	return 0;
}