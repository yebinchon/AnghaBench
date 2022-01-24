#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_17__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  id; } ;
struct TYPE_16__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct TYPE_18__ {TYPE_1__ dev; int /*<<< orphan*/  timeout; int /*<<< orphan*/  nr; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct at91_twi_dev {scalar_t__ irq; TYPE_2__* dev; int /*<<< orphan*/  clk; TYPE_8__ adapter; scalar_t__ slave_detected; int /*<<< orphan*/  base; int /*<<< orphan*/  pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_I2C_TIMEOUT ; 
 int /*<<< orphan*/  AT91_TWI_VER ; 
 int /*<<< orphan*/  AUTOSUSPEND_TIMEOUT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DEPRECATED ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct at91_twi_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ ,struct at91_twi_dev*) ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ ,struct at91_twi_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct at91_twi_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct resource*) ; 
 struct at91_twi_dev* FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_8__*) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*,struct at91_twi_dev*) ; 
 scalar_t__ FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct at91_twi_dev*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct at91_twi_dev *dev;
	struct resource *mem;
	int rc;
	u32 phy_addr;

	dev = FUNC13(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->dev = &pdev->dev;

	mem = FUNC18(pdev, IORESOURCE_MEM, 0);
	if (!mem)
		return -ENODEV;
	phy_addr = mem->start;

	dev->pdata = FUNC3(pdev);
	if (!dev->pdata)
		return -ENODEV;

	dev->base = FUNC12(&pdev->dev, mem);
	if (FUNC0(dev->base))
		return FUNC1(dev->base);

	dev->irq = FUNC17(pdev, 0);
	if (dev->irq < 0)
		return dev->irq;

	FUNC19(pdev, dev);

	dev->clk = FUNC11(dev->dev, NULL);
	if (FUNC0(dev->clk)) {
		FUNC9(dev->dev, "no clock defined\n");
		return -ENODEV;
	}
	FUNC8(dev->clk);

	FUNC26(dev->adapter.name, sizeof(dev->adapter.name), "AT91");
	FUNC16(&dev->adapter, dev);
	dev->adapter.owner = THIS_MODULE;
	dev->adapter.class = I2C_CLASS_DEPRECATED;
	dev->adapter.dev.parent = dev->dev;
	dev->adapter.nr = pdev->id;
	dev->adapter.timeout = AT91_I2C_TIMEOUT;
	dev->adapter.dev.of_node = pdev->dev.of_node;

	dev->slave_detected = FUNC15(&pdev->dev);

	if (dev->slave_detected)
		rc = FUNC5(pdev, phy_addr, dev);
	else
		rc = FUNC4(pdev, phy_addr, dev);
	if (rc)
		return rc;

	FUNC2(dev);

	FUNC23(dev->dev, AUTOSUSPEND_TIMEOUT);
	FUNC25(dev->dev);
	FUNC22(dev->dev);
	FUNC21(dev->dev);

	rc = FUNC14(&dev->adapter);
	if (rc) {
		FUNC7(dev->clk);

		FUNC20(dev->dev);
		FUNC24(dev->dev);

		return rc;
	}

	FUNC10(dev->dev, "AT91 i2c bus driver (hw version: %#x).\n",
		 FUNC6(dev, AT91_TWI_VER));
	return 0;
}