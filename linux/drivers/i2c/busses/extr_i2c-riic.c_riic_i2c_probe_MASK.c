#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct i2c_adapter {TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct riic_dev {int /*<<< orphan*/  msg_done; struct i2c_adapter adapter; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct i2c_timings {int /*<<< orphan*/  bus_freq_hz; } ;
struct TYPE_14__ {int /*<<< orphan*/  name; int /*<<< orphan*/  isr; int /*<<< orphan*/  res_num; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct resource*) ; 
 struct riic_dev* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct riic_dev*) ; 
 int FUNC9 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct i2c_timings*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_adapter*,struct riic_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct riic_dev*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  riic_algo ; 
 int FUNC17 (struct riic_dev*,struct i2c_timings*) ; 
 TYPE_2__* riic_irqs ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct riic_dev *riic;
	struct i2c_adapter *adap;
	struct resource *res;
	struct i2c_timings i2c_t;
	int i, ret;

	riic = FUNC7(&pdev->dev, sizeof(*riic), GFP_KERNEL);
	if (!riic)
		return -ENOMEM;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	riic->base = FUNC6(&pdev->dev, res);
	if (FUNC1(riic->base))
		return FUNC2(riic->base);

	riic->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC1(riic->clk)) {
		FUNC3(&pdev->dev, "missing controller clock");
		return FUNC2(riic->clk);
	}

	for (i = 0; i < FUNC0(riic_irqs); i++) {
		res = FUNC13(pdev, IORESOURCE_IRQ, riic_irqs[i].res_num);
		if (!res)
			return -ENODEV;

		ret = FUNC8(&pdev->dev, res->start, riic_irqs[i].isr,
					0, riic_irqs[i].name, riic);
		if (ret) {
			FUNC3(&pdev->dev, "failed to request irq %s\n", riic_irqs[i].name);
			return ret;
		}
	}

	adap = &riic->adapter;
	FUNC11(adap, riic);
	FUNC18(adap->name, "Renesas RIIC adapter", sizeof(adap->name));
	adap->owner = THIS_MODULE;
	adap->algo = &riic_algo;
	adap->dev.parent = &pdev->dev;
	adap->dev.of_node = pdev->dev.of_node;

	FUNC12(&riic->msg_done);

	FUNC10(&pdev->dev, &i2c_t, true);

	FUNC16(&pdev->dev);

	ret = FUNC17(riic, &i2c_t);
	if (ret)
		goto out;

	ret = FUNC9(adap);
	if (ret)
		goto out;

	FUNC14(pdev, riic);

	FUNC4(&pdev->dev, "registered with %dHz bus speed\n",
		 i2c_t.bus_freq_hz);
	return 0;

out:
	FUNC15(&pdev->dev);
	return ret;
}