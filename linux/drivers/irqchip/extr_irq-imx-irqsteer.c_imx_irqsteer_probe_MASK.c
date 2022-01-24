#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct irqsteer_data {int channel; int irq_count; int reg_num; scalar_t__ ipg_clk; int /*<<< orphan*/ * irq; int /*<<< orphan*/  domain; scalar_t__ regs; void* saved_reg; int /*<<< orphan*/  lock; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CHANCTRL ; 
 int CHAN_MAX_OUTPUT_INT ; 
 int /*<<< orphan*/  CONFIG_PM_SLEEP ; 
 int FUNC1 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char*) ; 
 void* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_irqsteer_domain_ops ; 
 int /*<<< orphan*/  imx_irqsteer_irq_handler ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,int,int /*<<< orphan*/ *,struct irqsteer_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct irqsteer_data*) ; 
 int FUNC14 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct irqsteer_data*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct irqsteer_data *data;
	u32 irqs_num;
	int i, ret;

	data = FUNC9(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->regs = FUNC10(pdev, 0);
	if (FUNC3(data->regs)) {
		FUNC7(&pdev->dev, "failed to initialize reg\n");
		return FUNC4(data->regs);
	}

	data->ipg_clk = FUNC8(&pdev->dev, "ipg");
	if (FUNC3(data->ipg_clk)) {
		ret = FUNC4(data->ipg_clk);
		if (ret != -EPROBE_DEFER)
			FUNC7(&pdev->dev, "failed to get ipg clk: %d\n", ret);
		return ret;
	}

	FUNC16(&data->lock);

	ret = FUNC14(np, "fsl,num-irqs", &irqs_num);
	if (ret)
		return ret;
	ret = FUNC14(np, "fsl,channel", &data->channel);
	if (ret)
		return ret;

	/*
	 * There is one output irq for each group of 64 inputs.
	 * One register bit map can represent 32 input interrupts.
	 */
	data->irq_count = FUNC1(irqs_num, 64);
	data->reg_num = irqs_num / 32;

	if (FUNC2(CONFIG_PM_SLEEP)) {
		data->saved_reg = FUNC9(&pdev->dev,
					sizeof(u32) * data->reg_num,
					GFP_KERNEL);
		if (!data->saved_reg)
			return -ENOMEM;
	}

	ret = FUNC6(data->ipg_clk);
	if (ret) {
		FUNC7(&pdev->dev, "failed to enable ipg clk: %d\n", ret);
		return ret;
	}

	/* steer all IRQs into configured channel */
	FUNC17(FUNC0(data->channel), data->regs + CHANCTRL);

	data->domain = FUNC11(np, data->reg_num * 32,
					     &imx_irqsteer_domain_ops, data);
	if (!data->domain) {
		FUNC7(&pdev->dev, "failed to create IRQ domain\n");
		ret = -ENOMEM;
		goto out;
	}

	if (!data->irq_count || data->irq_count > CHAN_MAX_OUTPUT_INT) {
		ret = -EINVAL;
		goto out;
	}

	for (i = 0; i < data->irq_count; i++) {
		data->irq[i] = FUNC12(np, i);
		if (!data->irq[i]) {
			ret = -EINVAL;
			goto out;
		}

		FUNC13(data->irq[i],
						 imx_irqsteer_irq_handler,
						 data);
	}

	FUNC15(pdev, data);

	return 0;
out:
	FUNC5(data->ipg_clk);
	return ret;
}