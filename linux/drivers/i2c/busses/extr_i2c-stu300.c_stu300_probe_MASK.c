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
struct TYPE_9__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int nr; int /*<<< orphan*/ * quirks; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct stu300_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  virtbase; struct i2c_adapter adapter; int /*<<< orphan*/  cmd_err; int /*<<< orphan*/  cmd_event; int /*<<< orphan*/  cmd_issue_lock; struct platform_device* pdev; int /*<<< orphan*/  clk; int /*<<< orphan*/  speed; } ;
struct resource {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {int id; TYPE_2__ dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DEPRECATED ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STU300_ERROR_NONE ; 
 int /*<<< orphan*/  STU300_EVENT_NONE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct resource*) ; 
 struct stu300_dev* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stu300_dev*) ; 
 int FUNC11 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_adapter*,struct stu300_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct stu300_dev*) ; 
 int /*<<< orphan*/  scl_frequency ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stu300_algo ; 
 int FUNC18 (struct stu300_dev*) ; 
 int /*<<< orphan*/  stu300_irh ; 
 int /*<<< orphan*/  stu300_quirks ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct stu300_dev *dev;
	struct i2c_adapter *adap;
	struct resource *res;
	int bus_nr;
	int ret = 0;

	dev = FUNC9(&pdev->dev, sizeof(struct stu300_dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	bus_nr = pdev->id;
	dev->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(dev->clk)) {
		FUNC5(&pdev->dev, "could not retrieve i2c bus clock\n");
		return FUNC1(dev->clk);
	}

	dev->pdev = pdev;
	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	dev->virtbase = FUNC8(&pdev->dev, res);
	FUNC4(&pdev->dev, "initialize bus device I2C%d on virtual "
		"base %p\n", bus_nr, dev->virtbase);
	if (FUNC0(dev->virtbase))
		return FUNC1(dev->virtbase);

	dev->irq = FUNC13(pdev, 0);
	ret = FUNC10(&pdev->dev, dev->irq, stu300_irh, 0, NAME, dev);
	if (ret < 0)
		return ret;

	dev->speed = scl_frequency;

	FUNC3(dev->clk);
	ret = FUNC18(dev);
	FUNC2(dev->clk);
	if (ret != 0) {
		FUNC5(&dev->pdev->dev, "error initializing hardware.\n");
		return -EIO;
	}

	/* IRQ event handling initialization */
	FUNC16(&dev->cmd_issue_lock);
	dev->cmd_event = STU300_EVENT_NONE;
	dev->cmd_err = STU300_ERROR_NONE;

	adap = &dev->adapter;
	adap->owner = THIS_MODULE;
	/* DDC class but actually often used for more generic I2C */
	adap->class = I2C_CLASS_DEPRECATED;
	FUNC17(adap->name, "ST Microelectronics DDC I2C adapter",
		sizeof(adap->name));
	adap->nr = bus_nr;
	adap->algo = &stu300_algo;
	adap->dev.parent = &pdev->dev;
	adap->dev.of_node = pdev->dev.of_node;
	adap->quirks = &stu300_quirks;

	FUNC12(adap, dev);

	/* i2c device drivers may be active on return from add_adapter() */
	ret = FUNC11(adap);
	if (ret)
		return ret;

	FUNC15(pdev, dev);
	FUNC6(&pdev->dev, "ST DDC I2C @ %p, irq %d\n",
		 dev->virtbase, dev->irq);

	return 0;
}