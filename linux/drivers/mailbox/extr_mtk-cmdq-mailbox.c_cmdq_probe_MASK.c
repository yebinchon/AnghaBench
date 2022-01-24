#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int num_chans; int txdone_irq; int txdone_poll; TYPE_1__* chans; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct cmdq {int thread_nr; scalar_t__ clock; TYPE_3__ mbox; TYPE_2__* thread; scalar_t__ base; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_mask; } ;
struct TYPE_5__ {int /*<<< orphan*/  task_busy_list; scalar_t__ base; } ;
struct TYPE_4__ {void* con_priv; } ;

/* Variables and functions */
 scalar_t__ CMDQ_THR_BASE ; 
 int CMDQ_THR_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct cmdq*) ; 
 int /*<<< orphan*/  cmdq_irq_handler ; 
 int /*<<< orphan*/  cmdq_mbox_chan_ops ; 
 int /*<<< orphan*/  cmdq_xlate ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,struct device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 scalar_t__ FUNC9 (struct device*,char*) ; 
 scalar_t__ FUNC10 (struct device*,struct resource*) ; 
 void* FUNC11 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct cmdq* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,TYPE_3__*) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cmdq*) ; 
 scalar_t__ FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct cmdq*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct cmdq *cmdq;
	int err, i;

	cmdq = FUNC12(dev, sizeof(*cmdq), GFP_KERNEL);
	if (!cmdq)
		return -ENOMEM;

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	cmdq->base = FUNC10(dev, res);
	if (FUNC2(cmdq->base)) {
		FUNC8(dev, "failed to ioremap gce\n");
		return FUNC3(cmdq->base);
	}

	cmdq->irq = FUNC16(pdev, 0);
	if (!cmdq->irq) {
		FUNC8(dev, "failed to get irq\n");
		return -EINVAL;
	}

	cmdq->thread_nr = (u32)(unsigned long)FUNC15(dev);
	cmdq->irq_mask = FUNC0(cmdq->thread_nr - 1, 0);
	err = FUNC14(dev, cmdq->irq, cmdq_irq_handler, IRQF_SHARED,
			       "mtk_cmdq", cmdq);
	if (err < 0) {
		FUNC8(dev, "failed to register ISR (%d)\n", err);
		return err;
	}

	FUNC7(dev, "cmdq device: addr:0x%p, va:0x%p, irq:%d\n",
		dev, cmdq->base, cmdq->irq);

	cmdq->clock = FUNC9(dev, "gce");
	if (FUNC2(cmdq->clock)) {
		FUNC8(dev, "failed to get gce clk\n");
		return FUNC3(cmdq->clock);
	}

	cmdq->mbox.dev = dev;
	cmdq->mbox.chans = FUNC11(dev, cmdq->thread_nr,
					sizeof(*cmdq->mbox.chans), GFP_KERNEL);
	if (!cmdq->mbox.chans)
		return -ENOMEM;

	cmdq->mbox.num_chans = cmdq->thread_nr;
	cmdq->mbox.ops = &cmdq_mbox_chan_ops;
	cmdq->mbox.of_xlate = cmdq_xlate;

	/* make use of TXDONE_BY_ACK */
	cmdq->mbox.txdone_irq = false;
	cmdq->mbox.txdone_poll = false;

	cmdq->thread = FUNC11(dev, cmdq->thread_nr,
					sizeof(*cmdq->thread), GFP_KERNEL);
	if (!cmdq->thread)
		return -ENOMEM;

	for (i = 0; i < cmdq->thread_nr; i++) {
		cmdq->thread[i].base = cmdq->base + CMDQ_THR_BASE +
				CMDQ_THR_SIZE * i;
		FUNC1(&cmdq->thread[i].task_busy_list);
		cmdq->mbox.chans[i].con_priv = (void *)&cmdq->thread[i];
	}

	err = FUNC13(dev, &cmdq->mbox);
	if (err < 0) {
		FUNC8(dev, "failed to register mailbox: %d\n", err);
		return err;
	}

	FUNC18(pdev, cmdq);
	FUNC4(FUNC5(cmdq->clock) < 0);

	FUNC6(cmdq);

	return 0;
}