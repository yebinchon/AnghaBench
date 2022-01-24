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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int class; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ibm_iic_private {int fast_mode; int /*<<< orphan*/ * vaddr; scalar_t__ irq; struct i2c_adapter adap; int /*<<< orphan*/  clckdiv; int /*<<< orphan*/  wq; } ;
struct device_node {struct device_node* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZ ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct ibm_iic_private*) ; 
 int FUNC5 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*,struct ibm_iic_private*) ; 
 int /*<<< orphan*/  iic_algo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (struct ibm_iic_private*) ; 
 scalar_t__ iic_force_fast ; 
 int /*<<< orphan*/  FUNC9 (struct ibm_iic_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct platform_device*,struct ibm_iic_private*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ibm_iic_private*) ; 
 struct ibm_iic_private* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct ibm_iic_private*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC20(struct platform_device *ofdev)
{
	struct device_node *np = ofdev->dev.of_node;
	struct ibm_iic_private *dev;
	struct i2c_adapter *adap;
	const u32 *freq;
	int ret;

	dev = FUNC14(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		FUNC1(&ofdev->dev, "failed to allocate device data\n");
		return -ENOMEM;
	}

	FUNC18(ofdev, dev);

	dev->vaddr = FUNC16(np, 0);
	if (dev->vaddr == NULL) {
		FUNC1(&ofdev->dev, "failed to iomap device\n");
		ret = -ENXIO;
		goto error_cleanup;
	}

	FUNC11(&dev->wq);

	dev->irq = FUNC10(ofdev, dev);
	if (!dev->irq)
		FUNC3(&ofdev->dev, "using polling mode\n");

	/* Board specific settings */
	if (iic_force_fast || FUNC15(np, "fast-mode", NULL))
		dev->fast_mode = 1;

	freq = FUNC15(np, "clock-frequency", NULL);
	if (freq == NULL) {
		freq = FUNC15(np->parent, "clock-frequency", NULL);
		if (freq == NULL) {
			FUNC1(&ofdev->dev, "Unable to get bus frequency\n");
			ret = -EINVAL;
			goto error_cleanup;
		}
	}

	dev->clckdiv = FUNC7(*freq);
	FUNC0(&ofdev->dev, "clckdiv = %d\n", dev->clckdiv);

	/* Initialize IIC interface */
	FUNC8(dev);

	/* Register it with i2c layer */
	adap = &dev->adap;
	adap->dev.parent = &ofdev->dev;
	adap->dev.of_node = FUNC17(np);
	FUNC19(adap->name, "IBM IIC", sizeof(adap->name));
	FUNC6(adap, dev);
	adap->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	adap->algo = &iic_algo;
	adap->timeout = HZ;

	ret = FUNC5(adap);
	if (ret  < 0)
		goto error_cleanup;

	FUNC2(&ofdev->dev, "using %s mode\n",
		 dev->fast_mode ? "fast (400 kHz)" : "standard (100 kHz)");

	return 0;

error_cleanup:
	if (dev->irq) {
		FUNC9(dev, 0);
		FUNC4(dev->irq, dev);
	}

	if (dev->vaddr)
		FUNC12(dev->vaddr);

	FUNC13(dev);
	return ret;
}