#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u32 ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_4__ {struct device_node* of_node; struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;
struct p2wi {int slave_addr; scalar_t__ clk; scalar_t__ rstc; TYPE_2__ adapter; scalar_t__ regs; int /*<<< orphan*/  complete; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ P2WI_CCR ; 
 int FUNC1 (int) ; 
 int P2WI_CCR_MAX_CLK_DIV ; 
 int FUNC2 (int) ; 
 scalar_t__ P2WI_CTRL ; 
 int P2WI_CTRL_SOFT_RST ; 
 unsigned long P2WI_MAX_FREQ ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 unsigned long FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,unsigned long) ; 
 scalar_t__ FUNC9 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct device*,struct resource*) ; 
 struct p2wi* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct p2wi*) ; 
 scalar_t__ FUNC13 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct p2wi*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct device_node*) ; 
 struct device_node* FUNC18 (struct device_node*,int /*<<< orphan*/ *) ; 
 int FUNC19 (struct device_node*,char*,unsigned long*) ; 
 int /*<<< orphan*/  p2wi_algo ; 
 int /*<<< orphan*/  p2wi_interrupt ; 
 int FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct p2wi*) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct device_node *childnp;
	unsigned long parent_clk_freq;
	u32 clk_freq = 100000;
	struct resource *r;
	struct p2wi *p2wi;
	u32 slave_addr;
	int clk_div;
	int irq;
	int ret;

	FUNC19(np, "clock-frequency", &clk_freq);
	if (clk_freq > P2WI_MAX_FREQ) {
		FUNC7(dev,
			"required clock-frequency (%u Hz) is too high (max = 6MHz)",
			clk_freq);
		return -EINVAL;
	}

	if (FUNC17(np) > 1) {
		FUNC7(dev, "P2WI only supports one slave device\n");
		return -EINVAL;
	}

	p2wi = FUNC11(dev, sizeof(struct p2wi), GFP_KERNEL);
	if (!p2wi)
		return -ENOMEM;

	p2wi->slave_addr = -1;

	/*
	 * Authorize a p2wi node without any children to be able to use an
	 * i2c-dev from userpace.
	 * In this case the slave_addr is set to -1 and won't be checked when
	 * launching a P2WI transfer.
	 */
	childnp = FUNC18(np, NULL);
	if (childnp) {
		ret = FUNC19(childnp, "reg", &slave_addr);
		if (ret) {
			FUNC7(dev, "invalid slave address on node %pOF\n",
				childnp);
			return -EINVAL;
		}

		p2wi->slave_addr = slave_addr;
	}

	r = FUNC21(pdev, IORESOURCE_MEM, 0);
	p2wi->regs = FUNC10(dev, r);
	if (FUNC0(p2wi->regs))
		return FUNC3(p2wi->regs);

	FUNC25(p2wi->adapter.name, pdev->name, sizeof(p2wi->adapter.name));
	irq = FUNC20(pdev, 0);
	if (irq < 0) {
		FUNC7(dev, "failed to retrieve irq: %d\n", irq);
		return irq;
	}

	p2wi->clk = FUNC9(dev, NULL);
	if (FUNC0(p2wi->clk)) {
		ret = FUNC3(p2wi->clk);
		FUNC7(dev, "failed to retrieve clk: %d\n", ret);
		return ret;
	}

	ret = FUNC6(p2wi->clk);
	if (ret) {
		FUNC7(dev, "failed to enable clk: %d\n", ret);
		return ret;
	}

	parent_clk_freq = FUNC5(p2wi->clk);

	p2wi->rstc = FUNC13(dev, NULL);
	if (FUNC0(p2wi->rstc)) {
		ret = FUNC3(p2wi->rstc);
		FUNC7(dev, "failed to retrieve reset controller: %d\n", ret);
		goto err_clk_disable;
	}

	ret = FUNC24(p2wi->rstc);
	if (ret) {
		FUNC7(dev, "failed to deassert reset line: %d\n", ret);
		goto err_clk_disable;
	}

	FUNC16(&p2wi->complete);
	p2wi->adapter.dev.parent = dev;
	p2wi->adapter.algo = &p2wi_algo;
	p2wi->adapter.owner = THIS_MODULE;
	p2wi->adapter.dev.of_node = pdev->dev.of_node;
	FUNC22(pdev, p2wi);
	FUNC15(&p2wi->adapter, p2wi);

	ret = FUNC12(dev, irq, p2wi_interrupt, 0, pdev->name, p2wi);
	if (ret) {
		FUNC7(dev, "can't register interrupt handler irq%d: %d\n",
			irq, ret);
		goto err_reset_assert;
	}

	FUNC26(P2WI_CTRL_SOFT_RST, p2wi->regs + P2WI_CTRL);

	clk_div = parent_clk_freq / clk_freq;
	if (!clk_div) {
		FUNC8(dev,
			 "clock-frequency is too high, setting it to %lu Hz\n",
			 parent_clk_freq);
		clk_div = 1;
	} else if (clk_div > P2WI_CCR_MAX_CLK_DIV) {
		FUNC8(dev,
			 "clock-frequency is too low, setting it to %lu Hz\n",
			 parent_clk_freq / P2WI_CCR_MAX_CLK_DIV);
		clk_div = P2WI_CCR_MAX_CLK_DIV;
	}

	FUNC26(FUNC2(1) | FUNC1(clk_div),
	       p2wi->regs + P2WI_CCR);

	ret = FUNC14(&p2wi->adapter);
	if (!ret)
		return 0;

err_reset_assert:
	FUNC23(p2wi->rstc);

err_clk_disable:
	FUNC4(p2wi->clk);

	return ret;
}