#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct g2d_data {int /*<<< orphan*/  runqueue_work; int /*<<< orphan*/  g2d_workq; int /*<<< orphan*/  flags; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  G2D_BIT_ENGINE_BUSY ; 
 scalar_t__ G2D_DMA_COMMAND ; 
 int G2D_DMA_CONTINUE ; 
 scalar_t__ G2D_DMA_HOLD_CMD ; 
 int G2D_DMA_LIST_DONE_COUNT ; 
 int G2D_DMA_LIST_DONE_COUNT_OFFSET ; 
 scalar_t__ G2D_DMA_STATUS ; 
 scalar_t__ G2D_INTC_PEND ; 
 int G2D_INTP_ACMD_FIN ; 
 int G2D_INTP_GCMD_FIN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct g2d_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct g2d_data *g2d = dev_id;
	u32 pending;

	pending = FUNC3(g2d->regs + G2D_INTC_PEND);
	if (pending)
		FUNC4(pending, g2d->regs + G2D_INTC_PEND);

	if (pending & G2D_INTP_GCMD_FIN) {
		u32 cmdlist_no = FUNC3(g2d->regs + G2D_DMA_STATUS);

		cmdlist_no = (cmdlist_no & G2D_DMA_LIST_DONE_COUNT) >>
						G2D_DMA_LIST_DONE_COUNT_OFFSET;

		FUNC1(g2d, cmdlist_no);

		FUNC4(0, g2d->regs + G2D_DMA_HOLD_CMD);
		if (!(pending & G2D_INTP_ACMD_FIN)) {
			FUNC4(G2D_DMA_CONTINUE,
					g2d->regs + G2D_DMA_COMMAND);
		}
	}

	if (pending & G2D_INTP_ACMD_FIN) {
		FUNC0(G2D_BIT_ENGINE_BUSY, &g2d->flags);
		FUNC2(g2d->g2d_workq, &g2d->runqueue_work);
	}

	return IRQ_HANDLED;
}