#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int dummy; } ;
struct TYPE_21__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_19__ {struct device_node* of_node; TYPE_3__* parent; } ;
struct TYPE_18__ {int retries; int /*<<< orphan*/  name; int /*<<< orphan*/  nr; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; TYPE_1__ dev; } ;
struct img_i2c {TYPE_11__ adap; int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  lock; int /*<<< orphan*/  bitrate; int /*<<< orphan*/  check_timer; void* scb_clk; void* sys_clk; void* base; } ;
struct device_node {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  max_bitrate; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMG_I2C_PM_TIMEOUT ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MODE_INACTIVE ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 void* FUNC3 (TYPE_3__*,char*) ; 
 void* FUNC4 (TYPE_3__*,struct resource*) ; 
 struct img_i2c* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct img_i2c*) ; 
 int FUNC7 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_11__*,struct img_i2c*) ; 
 int /*<<< orphan*/  img_i2c_algo ; 
 int /*<<< orphan*/  img_i2c_check_timer ; 
 int FUNC9 (struct img_i2c*) ; 
 int /*<<< orphan*/  img_i2c_isr ; 
 int FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct img_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct img_i2c*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* timings ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct img_i2c *i2c;
	struct resource *res;
	int irq, ret;
	u32 val;

	i2c = FUNC5(&pdev->dev, sizeof(struct img_i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	i2c->base = FUNC4(&pdev->dev, res);
	if (FUNC0(i2c->base))
		return FUNC1(i2c->base);

	irq = FUNC15(pdev, 0);
	if (irq < 0) {
		FUNC2(&pdev->dev, "can't get irq number\n");
		return irq;
	}

	i2c->sys_clk = FUNC3(&pdev->dev, "sys");
	if (FUNC0(i2c->sys_clk)) {
		FUNC2(&pdev->dev, "can't get system clock\n");
		return FUNC1(i2c->sys_clk);
	}

	i2c->scb_clk = FUNC3(&pdev->dev, "scb");
	if (FUNC0(i2c->scb_clk)) {
		FUNC2(&pdev->dev, "can't get core clock\n");
		return FUNC1(i2c->scb_clk);
	}

	ret = FUNC6(&pdev->dev, irq, img_i2c_isr, 0,
			       pdev->name, i2c);
	if (ret) {
		FUNC2(&pdev->dev, "can't request irq %d\n", irq);
		return ret;
	}

	/* Set up the exception check timer */
	FUNC26(&i2c->check_timer, img_i2c_check_timer, 0);

	i2c->bitrate = timings[0].max_bitrate;
	if (!FUNC14(node, "clock-frequency", &val))
		i2c->bitrate = val;

	FUNC8(&i2c->adap, i2c);
	i2c->adap.dev.parent = &pdev->dev;
	i2c->adap.dev.of_node = node;
	i2c->adap.owner = THIS_MODULE;
	i2c->adap.algo = &img_i2c_algo;
	i2c->adap.retries = 5;
	i2c->adap.nr = pdev->id;
	FUNC24(i2c->adap.name, sizeof(i2c->adap.name), "IMG SCB I2C");

	FUNC12(i2c, MODE_INACTIVE);
	FUNC25(&i2c->lock);
	FUNC13(&i2c->msg_complete);

	FUNC17(pdev, i2c);

	FUNC22(&pdev->dev, IMG_I2C_PM_TIMEOUT);
	FUNC23(&pdev->dev);
	FUNC20(&pdev->dev);
	if (!FUNC21(&pdev->dev)) {
		ret = FUNC10(&pdev->dev);
		if (ret)
			return ret;
	}

	ret = FUNC9(i2c);
	if (ret)
		goto rpm_disable;

	ret = FUNC7(&i2c->adap);
	if (ret < 0)
		goto rpm_disable;

	return 0;

rpm_disable:
	if (!FUNC21(&pdev->dev))
		FUNC11(&pdev->dev);
	FUNC18(&pdev->dev);
	FUNC19(&pdev->dev);
	return ret;
}