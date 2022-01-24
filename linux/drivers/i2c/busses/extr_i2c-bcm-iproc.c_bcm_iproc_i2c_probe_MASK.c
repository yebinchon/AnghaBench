#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {TYPE_1__ dev; int /*<<< orphan*/ * quirks; TYPE_8__* algo; int /*<<< orphan*/  name; } ;
struct bcm_iproc_i2c_dev {int type; int irq; TYPE_2__* device; struct i2c_adapter adapter; int /*<<< orphan*/  idm_lock; int /*<<< orphan*/  ape_addr_mask; void* idm_base; void* base; int /*<<< orphan*/  done; } ;
typedef  enum bcm_iproc_i2c_type { ____Placeholder_bcm_iproc_i2c_type } bcm_iproc_i2c_type ;
struct TYPE_11__ {int /*<<< orphan*/ * unreg_slave; int /*<<< orphan*/ * reg_slave; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ IPROC_I2C_NIC ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 TYPE_8__ bcm_iproc_algo ; 
 int FUNC2 (struct bcm_iproc_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_iproc_i2c_dev*,int) ; 
 int FUNC4 (struct bcm_iproc_i2c_dev*) ; 
 int /*<<< orphan*/  bcm_iproc_i2c_isr ; 
 int /*<<< orphan*/  bcm_iproc_i2c_quirks ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 void* FUNC7 (TYPE_2__*,struct resource*) ; 
 struct bcm_iproc_i2c_dev* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcm_iproc_i2c_dev*) ; 
 int FUNC10 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_adapter*,struct bcm_iproc_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct bcm_iproc_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	int irq, ret = 0;
	struct bcm_iproc_i2c_dev *iproc_i2c;
	struct i2c_adapter *adap;
	struct resource *res;

	iproc_i2c = FUNC8(&pdev->dev, sizeof(*iproc_i2c),
				 GFP_KERNEL);
	if (!iproc_i2c)
		return -ENOMEM;

	FUNC18(pdev, iproc_i2c);
	iproc_i2c->device = &pdev->dev;
	iproc_i2c->type =
		(enum bcm_iproc_i2c_type)FUNC13(&pdev->dev);
	FUNC12(&iproc_i2c->done);

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	iproc_i2c->base = FUNC7(iproc_i2c->device, res);
	if (FUNC0(iproc_i2c->base))
		return FUNC1(iproc_i2c->base);

	if (iproc_i2c->type == IPROC_I2C_NIC) {
		res = FUNC17(pdev, IORESOURCE_MEM, 1);
		iproc_i2c->idm_base = FUNC7(iproc_i2c->device,
							    res);
		if (FUNC0(iproc_i2c->idm_base))
			return FUNC1(iproc_i2c->idm_base);

		ret = FUNC15(iproc_i2c->device->of_node,
					   "brcm,ape-hsls-addr-mask",
					   &iproc_i2c->ape_addr_mask);
		if (ret < 0) {
			FUNC5(iproc_i2c->device,
				"'brcm,ape-hsls-addr-mask' missing\n");
			return -EINVAL;
		}

		FUNC20(&iproc_i2c->idm_lock);

		/* no slave support */
		bcm_iproc_algo.reg_slave = NULL;
		bcm_iproc_algo.unreg_slave = NULL;
	}

	ret = FUNC4(iproc_i2c);
	if (ret)
		return ret;

	ret = FUNC2(iproc_i2c);
	if (ret)
		return ret;

	irq = FUNC16(pdev, 0);
	if (irq > 0) {
		ret = FUNC9(iproc_i2c->device, irq,
				       bcm_iproc_i2c_isr, 0, pdev->name,
				       iproc_i2c);
		if (ret < 0) {
			FUNC5(iproc_i2c->device,
				"unable to request irq %i\n", irq);
			return ret;
		}

		iproc_i2c->irq = irq;
	} else {
		FUNC6(iproc_i2c->device,
			 "no irq resource, falling back to poll mode\n");
	}

	FUNC3(iproc_i2c, true);

	adap = &iproc_i2c->adapter;
	FUNC11(adap, iproc_i2c);
	FUNC19(adap->name, sizeof(adap->name),
		"Broadcom iProc (%s)",
		FUNC14(iproc_i2c->device->of_node));
	adap->algo = &bcm_iproc_algo;
	adap->quirks = &bcm_iproc_i2c_quirks;
	adap->dev.parent = &pdev->dev;
	adap->dev.of_node = pdev->dev.of_node;

	return FUNC10(adap);
}