#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int retries; int /*<<< orphan*/  nr; int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * quirks; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct sh_mobile_i2c_data {int clks_per_count; int /*<<< orphan*/  bus_speed; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; struct i2c_adapter adap; int /*<<< orphan*/  dma_tx; int /*<<< orphan*/  dma_rx; int /*<<< orphan*/  dma_direction; int /*<<< orphan*/  sg; int /*<<< orphan*/  flags; int /*<<< orphan*/  reg; struct resource* res; TYPE_2__* dev; int /*<<< orphan*/  clk; } ;
struct sh_mobile_dt_config {int clks_per_count; int (* setup ) (struct sh_mobile_i2c_data*) ;} ;
struct resource {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IIC_FLAG_HAS_ICIC67 ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STANDARD_MODE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct resource*) ; 
 struct sh_mobile_i2c_data* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sh_mobile_dt_config* FUNC11 (TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (struct resource*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sh_mobile_i2c_algorithm ; 
 int FUNC20 (struct platform_device*,struct sh_mobile_i2c_data*) ; 
 int FUNC21 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  sh_mobile_i2c_quirks ; 
 int /*<<< orphan*/  FUNC22 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC25 (struct sh_mobile_i2c_data*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *dev)
{
	struct sh_mobile_i2c_data *pd;
	struct i2c_adapter *adap;
	struct resource *res;
	const struct sh_mobile_dt_config *config;
	int ret;
	u32 bus_speed;

	pd = FUNC7(&dev->dev, sizeof(struct sh_mobile_i2c_data), GFP_KERNEL);
	if (!pd)
		return -ENOMEM;

	pd->clk = FUNC5(&dev->dev, NULL);
	if (FUNC1(pd->clk)) {
		FUNC3(&dev->dev, "cannot get clock\n");
		return FUNC2(pd->clk);
	}

	ret = FUNC20(dev, pd);
	if (ret)
		return ret;

	pd->dev = &dev->dev;
	FUNC14(dev, pd);

	res = FUNC13(dev, IORESOURCE_MEM, 0);

	pd->res = res;
	pd->reg = FUNC6(&dev->dev, res);
	if (FUNC1(pd->reg))
		return FUNC2(pd->reg);

	ret = FUNC12(dev->dev.of_node, "clock-frequency", &bus_speed);
	pd->bus_speed = (ret || !bus_speed) ? STANDARD_MODE : bus_speed;
	pd->clks_per_count = 1;

	/* Newer variants come with two new bits in ICIC */
	if (FUNC18(res) > 0x17)
		pd->flags |= IIC_FLAG_HAS_ICIC67;

	FUNC15(&dev->dev);
	FUNC16(&dev->dev);

	config = FUNC11(&dev->dev);
	if (config) {
		pd->clks_per_count = config->clks_per_count;
		ret = config->setup(pd);
	} else {
		ret = FUNC21(pd);
	}

	FUNC17(&dev->dev);
	if (ret)
		return ret;

	/* Init DMA */
	FUNC19(&pd->sg, 1);
	pd->dma_direction = DMA_NONE;
	pd->dma_rx = pd->dma_tx = FUNC0(-EPROBE_DEFER);

	/* setup the private data */
	adap = &pd->adap;
	FUNC9(adap, pd);

	adap->owner = THIS_MODULE;
	adap->algo = &sh_mobile_i2c_algorithm;
	adap->quirks = &sh_mobile_i2c_quirks;
	adap->dev.parent = &dev->dev;
	adap->retries = 5;
	adap->nr = dev->id;
	adap->dev.of_node = dev->dev.of_node;

	FUNC24(adap->name, dev->name, sizeof(adap->name));

	FUNC23(&pd->lock);
	FUNC10(&pd->wait);

	ret = FUNC8(adap);
	if (ret < 0) {
		FUNC22(pd);
		return ret;
	}

	FUNC4(&dev->dev, "I2C adapter %d, bus speed %lu Hz\n", adap->nr, pd->bus_speed);

	return 0;
}