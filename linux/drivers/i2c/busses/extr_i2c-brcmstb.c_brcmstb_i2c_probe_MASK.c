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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct resource {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {char const* name; TYPE_2__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct brcmstb_i2c_dev {int irq; int data_regsz; int /*<<< orphan*/  clk_freq_hz; TYPE_2__* device; struct i2c_adapter adapter; int /*<<< orphan*/  base; int /*<<< orphan*/  done; void* bsc_regmap; } ;
struct TYPE_11__ {int /*<<< orphan*/  hz; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_DISABLE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  brcmstb_i2c_algo ; 
 int /*<<< orphan*/  FUNC1 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmstb_i2c_isr ; 
 int /*<<< orphan*/  FUNC2 (struct brcmstb_i2c_dev*) ; 
 TYPE_8__* bsc_clk ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct resource*) ; 
 void* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct brcmstb_i2c_dev*) ; 
 int FUNC9 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_adapter*,struct brcmstb_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,char const**) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct brcmstb_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	int rc = 0;
	struct brcmstb_i2c_dev *dev;
	struct i2c_adapter *adap;
	struct resource *iomem;
	const char *int_name;

	/* Allocate memory for private data structure */
	dev = FUNC7(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->bsc_regmap = FUNC7(&pdev->dev, sizeof(*dev->bsc_regmap), GFP_KERNEL);
	if (!dev->bsc_regmap)
		return -ENOMEM;

	FUNC17(pdev, dev);
	dev->device = &pdev->dev;
	FUNC11(&dev->done);

	/* Map hardware registers */
	iomem = FUNC16(pdev, IORESOURCE_MEM, 0);
	dev->base = FUNC6(dev->device, iomem);
	if (FUNC0(dev->base)) {
		rc = -ENOMEM;
		goto probe_errorout;
	}

	rc = FUNC13(dev->device->of_node, "interrupt-names",
				     &int_name);
	if (rc < 0)
		int_name = NULL;

	/* Get the interrupt number */
	dev->irq = FUNC15(pdev, 0);

	/* disable the bsc interrupt line */
	FUNC1(dev, INT_DISABLE);

	/* register the ISR handler */
	rc = FUNC8(&pdev->dev, dev->irq, brcmstb_i2c_isr,
			      IRQF_SHARED,
			      int_name ? int_name : pdev->name,
			      dev);

	if (rc) {
		FUNC3(dev->device, "falling back to polling mode");
		dev->irq = -1;
	}

	if (FUNC14(dev->device->of_node,
				 "clock-frequency", &dev->clk_freq_hz)) {
		FUNC5(dev->device, "setting clock-frequency@%dHz\n",
			 bsc_clk[0].hz);
		dev->clk_freq_hz = bsc_clk[0].hz;
	}

	/* set the data in/out register size for compatible SoCs */
	if (FUNC12(dev->device->of_node,
				    "brcmstb,brcmper-i2c"))
		dev->data_regsz = sizeof(u8);
	else
		dev->data_regsz = sizeof(u32);

	FUNC2(dev);

	/* Add the i2c adapter */
	adap = &dev->adapter;
	FUNC10(adap, dev);
	adap->owner = THIS_MODULE;
	FUNC19(adap->name, "Broadcom STB : ", sizeof(adap->name));
	if (int_name)
		FUNC18(adap->name, int_name, sizeof(adap->name));
	adap->algo = &brcmstb_i2c_algo;
	adap->dev.parent = &pdev->dev;
	adap->dev.of_node = pdev->dev.of_node;
	rc = FUNC9(adap);
	if (rc)
		goto probe_errorout;

	FUNC4(dev->device, "%s@%dhz registered in %s mode\n",
		 int_name ? int_name : " ", dev->clk_freq_hz,
		 (dev->irq >= 0) ? "interrupt" : "polling");

	return 0;

probe_errorout:
	return rc;
}