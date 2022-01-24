#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct i2c_adapter {TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct wmt_i2c_dev {int /*<<< orphan*/  complete; struct i2c_adapter adapter; int /*<<< orphan*/  irq; TYPE_2__* dev; int /*<<< orphan*/  mode; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_MODE_FAST ; 
 int /*<<< orphan*/  I2C_MODE_STANDARD ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct resource*) ; 
 struct wmt_i2c_dev* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wmt_i2c_dev*) ; 
 int FUNC6 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,struct wmt_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device_node*,char*,int*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct wmt_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  wmt_i2c_algo ; 
 int /*<<< orphan*/  wmt_i2c_isr ; 
 int FUNC15 (struct wmt_i2c_dev*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct wmt_i2c_dev *i2c_dev;
	struct i2c_adapter *adap;
	struct resource *res;
	int err;
	u32 clk_rate;

	i2c_dev = FUNC4(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
	if (!i2c_dev)
		return -ENOMEM;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	i2c_dev->base = FUNC3(&pdev->dev, res);
	if (FUNC0(i2c_dev->base))
		return FUNC1(i2c_dev->base);

	i2c_dev->irq = FUNC9(np, 0);
	if (!i2c_dev->irq) {
		FUNC2(&pdev->dev, "irq missing or invalid\n");
		return -EINVAL;
	}

	i2c_dev->clk = FUNC10(np, 0);
	if (FUNC0(i2c_dev->clk)) {
		FUNC2(&pdev->dev, "unable to request clock\n");
		return FUNC1(i2c_dev->clk);
	}

	i2c_dev->mode = I2C_MODE_STANDARD;
	err = FUNC11(np, "clock-frequency", &clk_rate);
	if ((!err) && (clk_rate == 400000))
		i2c_dev->mode = I2C_MODE_FAST;

	i2c_dev->dev = &pdev->dev;

	err = FUNC5(&pdev->dev, i2c_dev->irq, wmt_i2c_isr, 0,
							"i2c", i2c_dev);
	if (err) {
		FUNC2(&pdev->dev, "failed to request irq %i\n", i2c_dev->irq);
		return err;
	}

	adap = &i2c_dev->adapter;
	FUNC7(adap, i2c_dev);
	FUNC14(adap->name, "WMT I2C adapter", sizeof(adap->name));
	adap->owner = THIS_MODULE;
	adap->algo = &wmt_i2c_algo;
	adap->dev.parent = &pdev->dev;
	adap->dev.of_node = pdev->dev.of_node;

	FUNC8(&i2c_dev->complete);

	err = FUNC15(i2c_dev);
	if (err) {
		FUNC2(&pdev->dev, "error initializing hardware\n");
		return err;
	}

	err = FUNC6(adap);
	if (err)
		return err;

	FUNC13(pdev, i2c_dev);

	return 0;
}