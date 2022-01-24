#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mhu_link {int /*<<< orphan*/  irq; scalar_t__ tx_reg; } ;
struct mbox_chan {TYPE_1__* mbox; struct mhu_link* con_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ INTR_CLR_OFS ; 
 scalar_t__ INTR_STAT_OFS ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mhu_rx_interrupt ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct mbox_chan *chan)
{
	struct mhu_link *mlink = chan->con_priv;
	u32 val;
	int ret;

	val = FUNC1(mlink->tx_reg + INTR_STAT_OFS);
	FUNC3(val, mlink->tx_reg + INTR_CLR_OFS);

	ret = FUNC2(mlink->irq, mhu_rx_interrupt,
			  IRQF_SHARED, "mhu_link", chan);
	if (ret) {
		FUNC0(chan->mbox->dev,
			"Unable to acquire IRQ %d\n", mlink->irq);
		return ret;
	}

	return 0;
}