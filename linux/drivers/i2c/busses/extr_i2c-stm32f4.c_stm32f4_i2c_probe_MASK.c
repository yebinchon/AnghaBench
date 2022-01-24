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
struct i2c_adapter {int timeout; TYPE_1__ dev; int /*<<< orphan*/ * algo; scalar_t__ retries; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct stm32f4_i2c_dev {struct reset_control* clk; TYPE_2__* dev; int /*<<< orphan*/  complete; struct i2c_adapter adap; int /*<<< orphan*/  speed; struct reset_control* base; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct reset_control {int dummy; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  STM32_I2C_SPEED_FAST ; 
 int /*<<< orphan*/  STM32_I2C_SPEED_STANDARD ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct reset_control*) ; 
 int FUNC4 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 struct reset_control* FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct reset_control* FUNC8 (TYPE_2__*,struct resource*) ; 
 struct stm32f4_i2c_dev* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32f4_i2c_dev*) ; 
 struct reset_control* FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_adapter*,struct stm32f4_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct device_node*,int) ; 
 int FUNC16 (struct device_node*,char*,int*) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct stm32f4_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC20 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32f4_i2c_algo ; 
 int FUNC22 (struct stm32f4_i2c_dev*) ; 
 int /*<<< orphan*/  stm32f4_i2c_isr_error ; 
 int /*<<< orphan*/  stm32f4_i2c_isr_event ; 
 int /*<<< orphan*/  FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct stm32f4_i2c_dev *i2c_dev;
	struct resource *res;
	u32 irq_event, irq_error, clk_rate;
	struct i2c_adapter *adap;
	struct reset_control *rst;
	int ret;

	i2c_dev = FUNC9(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
	if (!i2c_dev)
		return -ENOMEM;

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	i2c_dev->base = FUNC8(&pdev->dev, res);
	if (FUNC0(i2c_dev->base))
		return FUNC1(i2c_dev->base);

	irq_event = FUNC15(np, 0);
	if (!irq_event) {
		FUNC5(&pdev->dev, "IRQ event missing or invalid\n");
		return -EINVAL;
	}

	irq_error = FUNC15(np, 1);
	if (!irq_error) {
		FUNC5(&pdev->dev, "IRQ error missing or invalid\n");
		return -EINVAL;
	}

	i2c_dev->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(i2c_dev->clk)) {
		FUNC5(&pdev->dev, "Error: Missing controller clock\n");
		return FUNC1(i2c_dev->clk);
	}
	ret = FUNC4(i2c_dev->clk);
	if (ret) {
		FUNC5(i2c_dev->dev, "Failed to prepare_enable clock\n");
		return ret;
	}

	rst = FUNC11(&pdev->dev, NULL);
	if (FUNC0(rst)) {
		FUNC5(&pdev->dev, "Error: Missing controller reset\n");
		ret = FUNC1(rst);
		goto clk_free;
	}
	FUNC19(rst);
	FUNC23(2);
	FUNC20(rst);

	i2c_dev->speed = STM32_I2C_SPEED_STANDARD;
	ret = FUNC16(np, "clock-frequency", &clk_rate);
	if (!ret && clk_rate >= 400000)
		i2c_dev->speed = STM32_I2C_SPEED_FAST;

	i2c_dev->dev = &pdev->dev;

	ret = FUNC10(&pdev->dev, irq_event, stm32f4_i2c_isr_event, 0,
			       pdev->name, i2c_dev);
	if (ret) {
		FUNC5(&pdev->dev, "Failed to request irq event %i\n",
			irq_event);
		goto clk_free;
	}

	ret = FUNC10(&pdev->dev, irq_error, stm32f4_i2c_isr_error, 0,
			       pdev->name, i2c_dev);
	if (ret) {
		FUNC5(&pdev->dev, "Failed to request irq error %i\n",
			irq_error);
		goto clk_free;
	}

	ret = FUNC22(i2c_dev);
	if (ret)
		goto clk_free;

	adap = &i2c_dev->adap;
	FUNC13(adap, i2c_dev);
	FUNC21(adap->name, sizeof(adap->name), "STM32 I2C(%pa)", &res->start);
	adap->owner = THIS_MODULE;
	adap->timeout = 2 * HZ;
	adap->retries = 0;
	adap->algo = &stm32f4_i2c_algo;
	adap->dev.parent = &pdev->dev;
	adap->dev.of_node = pdev->dev.of_node;

	FUNC14(&i2c_dev->complete);

	ret = FUNC12(adap);
	if (ret)
		goto clk_free;

	FUNC18(pdev, i2c_dev);

	FUNC2(i2c_dev->clk);

	FUNC6(i2c_dev->dev, "STM32F4 I2C driver registered\n");

	return 0;

clk_free:
	FUNC3(i2c_dev->clk);
	return ret;
}