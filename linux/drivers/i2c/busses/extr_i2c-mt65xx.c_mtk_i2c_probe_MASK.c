#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_12__ {TYPE_3__* parent; int /*<<< orphan*/  of_node; } ;
struct TYPE_15__ {int timeout; int retries; int /*<<< orphan*/  name; int /*<<< orphan*/  quirks; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; TYPE_1__ dev; } ;
struct mtk_i2c {TYPE_4__ adap; TYPE_2__* dev_comp; struct clk* clk_pmic; scalar_t__ have_pmic; struct clk* clk_main; struct clk* clk_arb; struct clk* clk_dma; int /*<<< orphan*/  clk_src_div; TYPE_3__* dev; int /*<<< orphan*/  msg_complete; struct clk* pdmabase; struct clk* base; } ;
struct clk {int dummy; } ;
struct TYPE_13__ {scalar_t__ support_33bits; int /*<<< orphan*/  pmic_i2c; scalar_t__ timing_adjust; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  I2C_DEFAULT_CLK_DIV ; 
 int /*<<< orphan*/  I2C_DRV_NAME ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,...) ; 
 void* FUNC5 (TYPE_3__*,char*) ; 
 void* FUNC6 (TYPE_3__*,struct resource*) ; 
 struct mtk_i2c* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtk_i2c*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,struct mtk_i2c*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_i2c_algorithm ; 
 int /*<<< orphan*/  FUNC13 (struct mtk_i2c*) ; 
 int FUNC14 (struct mtk_i2c*) ; 
 int /*<<< orphan*/  FUNC15 (struct mtk_i2c*) ; 
 int /*<<< orphan*/  mtk_i2c_irq ; 
 int FUNC16 (int /*<<< orphan*/ ,struct mtk_i2c*) ; 
 int FUNC17 (struct mtk_i2c*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC18 (TYPE_3__*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct mtk_i2c*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	int ret = 0;
	struct mtk_i2c *i2c;
	struct clk *clk;
	struct resource *res;
	int irq;

	i2c = FUNC7(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	i2c->base = FUNC6(&pdev->dev, res);
	if (FUNC1(i2c->base))
		return FUNC2(i2c->base);

	res = FUNC20(pdev, IORESOURCE_MEM, 1);
	i2c->pdmabase = FUNC6(&pdev->dev, res);
	if (FUNC1(i2c->pdmabase))
		return FUNC2(i2c->pdmabase);

	irq = FUNC19(pdev, 0);
	if (irq <= 0)
		return irq;

	FUNC12(&i2c->msg_complete);

	i2c->dev_comp = FUNC18(&pdev->dev);
	i2c->adap.dev.of_node = pdev->dev.of_node;
	i2c->dev = &pdev->dev;
	i2c->adap.dev.parent = &pdev->dev;
	i2c->adap.owner = THIS_MODULE;
	i2c->adap.algo = &mtk_i2c_algorithm;
	i2c->adap.quirks = i2c->dev_comp->quirks;
	i2c->adap.timeout = 2 * HZ;
	i2c->adap.retries = 1;

	ret = FUNC16(pdev->dev.of_node, i2c);
	if (ret)
		return -EINVAL;

	if (i2c->dev_comp->timing_adjust)
		i2c->clk_src_div *= I2C_DEFAULT_CLK_DIV;

	if (i2c->have_pmic && !i2c->dev_comp->pmic_i2c)
		return -EINVAL;

	i2c->clk_main = FUNC5(&pdev->dev, "main");
	if (FUNC1(i2c->clk_main)) {
		FUNC4(&pdev->dev, "cannot get main clock\n");
		return FUNC2(i2c->clk_main);
	}

	i2c->clk_dma = FUNC5(&pdev->dev, "dma");
	if (FUNC1(i2c->clk_dma)) {
		FUNC4(&pdev->dev, "cannot get dma clock\n");
		return FUNC2(i2c->clk_dma);
	}

	i2c->clk_arb = FUNC5(&pdev->dev, "arb");
	if (FUNC1(i2c->clk_arb))
		i2c->clk_arb = NULL;

	clk = i2c->clk_main;
	if (i2c->have_pmic) {
		i2c->clk_pmic = FUNC5(&pdev->dev, "pmic");
		if (FUNC1(i2c->clk_pmic)) {
			FUNC4(&pdev->dev, "cannot get pmic clock\n");
			return FUNC2(i2c->clk_pmic);
		}
		clk = i2c->clk_pmic;
	}

	FUNC22(i2c->adap.name, I2C_DRV_NAME, sizeof(i2c->adap.name));

	ret = FUNC17(i2c, FUNC3(clk));
	if (ret) {
		FUNC4(&pdev->dev, "Failed to set the speed.\n");
		return -EINVAL;
	}

	if (i2c->dev_comp->support_33bits) {
		ret = FUNC9(&pdev->dev, FUNC0(33));
		if (ret) {
			FUNC4(&pdev->dev, "dma_set_mask return error.\n");
			return ret;
		}
	}

	ret = FUNC14(i2c);
	if (ret) {
		FUNC4(&pdev->dev, "clock enable failed!\n");
		return ret;
	}
	FUNC15(i2c);
	FUNC13(i2c);

	ret = FUNC8(&pdev->dev, irq, mtk_i2c_irq,
			       IRQF_TRIGGER_NONE, I2C_DRV_NAME, i2c);
	if (ret < 0) {
		FUNC4(&pdev->dev,
			"Request I2C IRQ %d fail\n", irq);
		return ret;
	}

	FUNC11(&i2c->adap, i2c);
	ret = FUNC10(&i2c->adap);
	if (ret)
		return ret;

	FUNC21(pdev, i2c);

	return 0;
}