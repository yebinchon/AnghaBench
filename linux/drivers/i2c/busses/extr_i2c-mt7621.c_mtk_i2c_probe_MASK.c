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
struct resource {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int retries; int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct mtk_i2c {int bus_freq; struct i2c_adapter adap; TYPE_2__* dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct resource*) ; 
 struct mtk_i2c* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_adapter*,struct mtk_i2c*) ; 
 int /*<<< orphan*/  mtk_i2c_algo ; 
 int /*<<< orphan*/  FUNC12 (struct mtk_i2c*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,int*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct mtk_i2c*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct resource *res;
	struct mtk_i2c *i2c;
	struct i2c_adapter *adap;
	int ret;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);

	i2c = FUNC9(&pdev->dev, sizeof(struct mtk_i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	i2c->base = FUNC8(&pdev->dev, res);
	if (FUNC0(i2c->base))
		return FUNC1(i2c->base);

	i2c->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(i2c->clk)) {
		FUNC3(&pdev->dev, "no clock defined\n");
		return FUNC1(i2c->clk);
	}
	ret = FUNC2(i2c->clk);
	if (ret) {
		FUNC3(&pdev->dev, "Unable to enable clock\n");
		return ret;
	}

	i2c->dev = &pdev->dev;

	if (FUNC13(pdev->dev.of_node, "clock-frequency",
				 &i2c->bus_freq))
		i2c->bus_freq = 100000;

	if (i2c->bus_freq == 0) {
		FUNC6(i2c->dev, "clock-frequency 0 not supported\n");
		return -EINVAL;
	}

	adap = &i2c->adap;
	adap->owner = THIS_MODULE;
	adap->algo = &mtk_i2c_algo;
	adap->retries = 3;
	adap->dev.parent = &pdev->dev;
	FUNC11(adap, i2c);
	adap->dev.of_node = pdev->dev.of_node;
	FUNC16(adap->name, FUNC5(&pdev->dev), sizeof(adap->name));

	FUNC15(pdev, i2c);

	FUNC12(i2c);

	ret = FUNC10(adap);
	if (ret < 0)
		return ret;

	FUNC4(&pdev->dev, "clock %u kHz\n", i2c->bus_freq / 1000);

	return ret;
}