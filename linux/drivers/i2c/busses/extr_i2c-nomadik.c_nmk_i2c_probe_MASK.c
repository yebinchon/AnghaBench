#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_12__ {TYPE_4__* parent; struct device_node* of_node; } ;
struct i2c_adapter {int /*<<< orphan*/  name; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * algo; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; TYPE_1__ dev; } ;
struct nmk_i2c_dev {scalar_t__ tft; scalar_t__ rft; int /*<<< orphan*/  clk; int /*<<< orphan*/  virtbase; int /*<<< orphan*/  timeout; struct i2c_adapter adap; int /*<<< orphan*/  irq; struct amba_device* adev; struct i2c_vendor_data* vendor; } ;
struct i2c_vendor_data {int fifodepth; } ;
struct device_node {int dummy; } ;
struct amba_id {struct i2c_vendor_data* data; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct TYPE_13__ {int /*<<< orphan*/  start; } ;
struct amba_device {TYPE_4__ dev; TYPE_2__ res; int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DEPRECATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct amba_device*,struct nmk_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nmk_i2c_dev* FUNC10 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nmk_i2c_dev*) ; 
 int FUNC12 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_irq_handler ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_adapter*,struct nmk_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct nmk_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nmk_i2c_algo ; 
 int /*<<< orphan*/  FUNC16 (struct device_node*,struct nmk_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,char*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC20(struct amba_device *adev, const struct amba_id *id)
{
	int ret = 0;
	struct device_node *np = adev->dev.of_node;
	struct nmk_i2c_dev	*dev;
	struct i2c_adapter *adap;
	struct i2c_vendor_data *vendor = id->data;
	u32 max_fifo_threshold = (vendor->fifodepth / 2) - 1;

	dev = FUNC10(&adev->dev, sizeof(struct nmk_i2c_dev), GFP_KERNEL);
	if (!dev) {
		FUNC5(&adev->dev, "cannot allocate memory\n");
		ret = -ENOMEM;
		goto err_no_mem;
	}
	dev->vendor = vendor;
	dev->adev = adev;
	FUNC16(np, dev);

	if (dev->tft > max_fifo_threshold) {
		FUNC7(&adev->dev, "requested TX FIFO threshold %u, adjusted down to %u\n",
			 dev->tft, max_fifo_threshold);
		dev->tft = max_fifo_threshold;
	}

	if (dev->rft > max_fifo_threshold) {
		FUNC7(&adev->dev, "requested RX FIFO threshold %u, adjusted down to %u\n",
			dev->rft, max_fifo_threshold);
		dev->rft = max_fifo_threshold;
	}

	FUNC2(adev, dev);

	dev->virtbase = FUNC9(&adev->dev, adev->res.start,
				FUNC18(&adev->res));
	if (!dev->virtbase) {
		ret = -ENOMEM;
		goto err_no_mem;
	}

	dev->irq = adev->irq[0];
	ret = FUNC11(&adev->dev, dev->irq, i2c_irq_handler, 0,
				DRIVER_NAME, dev);
	if (ret) {
		FUNC5(&adev->dev, "cannot claim the irq %d\n", dev->irq);
		goto err_no_mem;
	}

	dev->clk = FUNC8(&adev->dev, NULL);
	if (FUNC0(dev->clk)) {
		FUNC5(&adev->dev, "could not get i2c clock\n");
		ret = FUNC1(dev->clk);
		goto err_no_mem;
	}

	ret = FUNC4(dev->clk);
	if (ret) {
		FUNC5(&adev->dev, "can't prepare_enable clock\n");
		goto err_no_mem;
	}

	FUNC14(dev);

	adap = &dev->adap;
	adap->dev.of_node = np;
	adap->dev.parent = &adev->dev;
	adap->owner = THIS_MODULE;
	adap->class = I2C_CLASS_DEPRECATED;
	adap->algo = &nmk_i2c_algo;
	adap->timeout = FUNC15(dev->timeout);
	FUNC19(adap->name, sizeof(adap->name),
		 "Nomadik I2C at %pR", &adev->res);

	FUNC13(adap, dev);

	FUNC6(&adev->dev,
		 "initialize %s on virtual base %p\n",
		 adap->name, dev->virtbase);

	ret = FUNC12(adap);
	if (ret)
		goto err_no_adap;

	FUNC17(&adev->dev);

	return 0;

 err_no_adap:
	FUNC3(dev->clk);
 err_no_mem:

	return ret;
}