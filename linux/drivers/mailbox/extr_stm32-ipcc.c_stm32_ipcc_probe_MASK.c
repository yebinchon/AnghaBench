#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_3__ {int txdone_irq; unsigned int num_chans; TYPE_2__* chans; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct stm32_ipcc {int proc_id; int* irqs; int wkp; unsigned int n_chans; scalar_t__ clk; TYPE_1__ controller; scalar_t__ reg_base; scalar_t__ reg_proc; int /*<<< orphan*/  lock; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;
struct TYPE_4__ {void* con_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ IPCC_HWCFGR ; 
 unsigned int IPCC_IRQ_NUM ; 
 int IPCC_PROC_OFFST ; 
 scalar_t__ IPCC_VER ; 
 scalar_t__ IPCC_XCR ; 
 scalar_t__ IPCC_XMR ; 
 unsigned int IPCFGR_CHAN_MASK ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int RX_BIT_MASK ; 
 int STM32_MAX_PROCS ; 
 int TX_BIT_MASK ; 
 int /*<<< orphan*/  VER_MAJREV_MASK ; 
 int /*<<< orphan*/  VER_MINREV_MASK ; 
 int XCR_RXOIE ; 
 int XCR_TXOIE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int) ; 
 scalar_t__ FUNC12 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct device*,struct resource*) ; 
 TYPE_2__* FUNC14 (struct device*,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct stm32_ipcc* FUNC15 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct device*,TYPE_1__*) ; 
 int FUNC17 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32_ipcc*) ; 
 scalar_t__ FUNC18 (struct device_node*,char*) ; 
 scalar_t__ FUNC19 (struct device_node*,char*,int*) ; 
 void* FUNC20 (struct platform_device*,char const* const) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct stm32_ipcc*) ; 
 void* FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_ipcc_ops ; 
 int /*<<< orphan*/  stm32_ipcc_rx_irq ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  stm32_ipcc_tx_irq ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct stm32_ipcc *ipcc;
	struct resource *res;
	unsigned int i;
	int ret;
	u32 ip_ver;
	static const char * const irq_name[] = {"rx", "tx"};
	irq_handler_t irq_thread[] = {stm32_ipcc_rx_irq, stm32_ipcc_tx_irq};

	if (!np) {
		FUNC5(dev, "No DT found\n");
		return -ENODEV;
	}

	ipcc = FUNC15(dev, sizeof(*ipcc), GFP_KERNEL);
	if (!ipcc)
		return -ENOMEM;

	FUNC24(&ipcc->lock);

	/* proc_id */
	if (FUNC19(np, "st,proc-id", &ipcc->proc_id)) {
		FUNC5(dev, "Missing st,proc-id\n");
		return -ENODEV;
	}

	if (ipcc->proc_id >= STM32_MAX_PROCS) {
		FUNC5(dev, "Invalid proc_id (%d)\n", ipcc->proc_id);
		return -EINVAL;
	}

	/* regs */
	res = FUNC21(pdev, IORESOURCE_MEM, 0);
	ipcc->reg_base = FUNC13(dev, res);
	if (FUNC1(ipcc->reg_base))
		return FUNC2(ipcc->reg_base);

	ipcc->reg_proc = ipcc->reg_base + ipcc->proc_id * IPCC_PROC_OFFST;

	/* clock */
	ipcc->clk = FUNC12(dev, NULL);
	if (FUNC1(ipcc->clk))
		return FUNC2(ipcc->clk);

	ret = FUNC4(ipcc->clk);
	if (ret) {
		FUNC5(dev, "can not enable the clock\n");
		return ret;
	}

	/* irq */
	for (i = 0; i < IPCC_IRQ_NUM; i++) {
		ipcc->irqs[i] = FUNC20(pdev, irq_name[i]);
		if (ipcc->irqs[i] < 0) {
			if (ipcc->irqs[i] != -EPROBE_DEFER)
				FUNC5(dev, "no IRQ specified %s\n",
					irq_name[i]);
			ret = ipcc->irqs[i];
			goto err_clk;
		}

		ret = FUNC17(dev, ipcc->irqs[i], NULL,
						irq_thread[i], IRQF_ONESHOT,
						FUNC7(dev), ipcc);
		if (ret) {
			FUNC5(dev, "failed to request irq %d (%d)\n", i, ret);
			goto err_clk;
		}
	}

	/* mask and enable rx/tx irq */
	FUNC25(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
			    RX_BIT_MASK | TX_BIT_MASK);
	FUNC25(&ipcc->lock, ipcc->reg_proc + IPCC_XCR,
			    XCR_RXOIE | XCR_TXOIE);

	/* wakeup */
	if (FUNC18(np, "wakeup-source")) {
		ipcc->wkp = FUNC20(pdev, "wakeup");
		if (ipcc->wkp < 0) {
			if (ipcc->wkp != -EPROBE_DEFER)
				FUNC5(dev, "could not get wakeup IRQ\n");
			ret = ipcc->wkp;
			goto err_clk;
		}

		FUNC11(dev, true);
		ret = FUNC9(dev, ipcc->wkp);
		if (ret) {
			FUNC5(dev, "Failed to set wake up irq\n");
			goto err_init_wkp;
		}
	}

	/* mailbox controller */
	ipcc->n_chans = FUNC23(ipcc->reg_base + IPCC_HWCFGR);
	ipcc->n_chans &= IPCFGR_CHAN_MASK;

	ipcc->controller.dev = dev;
	ipcc->controller.txdone_irq = true;
	ipcc->controller.ops = &stm32_ipcc_ops;
	ipcc->controller.num_chans = ipcc->n_chans;
	ipcc->controller.chans = FUNC14(dev, ipcc->controller.num_chans,
					      sizeof(*ipcc->controller.chans),
					      GFP_KERNEL);
	if (!ipcc->controller.chans) {
		ret = -ENOMEM;
		goto err_irq_wkp;
	}

	for (i = 0; i < ipcc->controller.num_chans; i++)
		ipcc->controller.chans[i].con_priv = (void *)i;

	ret = FUNC16(dev, &ipcc->controller);
	if (ret)
		goto err_irq_wkp;

	FUNC22(pdev, ipcc);

	ip_ver = FUNC23(ipcc->reg_base + IPCC_VER);

	FUNC6(dev, "ipcc rev:%ld.%ld enabled, %d chans, proc %d\n",
		 FUNC0(VER_MAJREV_MASK, ip_ver),
		 FUNC0(VER_MINREV_MASK, ip_ver),
		 ipcc->controller.num_chans, ipcc->proc_id);

	FUNC3(ipcc->clk);
	return 0;

err_irq_wkp:
	if (ipcc->wkp)
		FUNC8(dev);
err_init_wkp:
	FUNC10(dev, false);
err_clk:
	FUNC3(ipcc->clk);
	return ret;
}