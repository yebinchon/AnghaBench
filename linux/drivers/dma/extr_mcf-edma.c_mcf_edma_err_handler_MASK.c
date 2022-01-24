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
struct edma_regs {int /*<<< orphan*/  cerr; int /*<<< orphan*/  errh; int /*<<< orphan*/  errl; } ;
struct fsl_edma_engine {TYPE_1__* chans; struct edma_regs regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int idle; void* status; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 void* DMA_ERROR ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int EDMA_CHANNELS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct fsl_edma_engine *mcf_edma = dev_id;
	struct edma_regs *regs = &mcf_edma->regs;
	unsigned int err, ch;

	err = FUNC3(regs->errl);
	if (!err)
		return IRQ_NONE;

	for (ch = 0; ch < (EDMA_CHANNELS / 2); ch++) {
		if (err & FUNC0(ch)) {
			FUNC2(&mcf_edma->chans[ch]);
			FUNC4(FUNC1(ch), regs->cerr);
			mcf_edma->chans[ch].status = DMA_ERROR;
			mcf_edma->chans[ch].idle = true;
		}
	}

	err = FUNC3(regs->errh);
	if (!err)
		return IRQ_NONE;

	for (ch = (EDMA_CHANNELS / 2); ch < EDMA_CHANNELS; ch++) {
		if (err & (FUNC0(ch - (EDMA_CHANNELS / 2)))) {
			FUNC2(&mcf_edma->chans[ch]);
			FUNC4(FUNC1(ch), regs->cerr);
			mcf_edma->chans[ch].status = DMA_ERROR;
			mcf_edma->chans[ch].idle = true;
		}
	}

	return IRQ_HANDLED;
}