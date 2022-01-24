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
struct edma_regs {int /*<<< orphan*/  cerr; int /*<<< orphan*/  errl; } ;
struct fsl_edma_engine {unsigned int n_chans; TYPE_1__* chans; struct edma_regs regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int idle; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ERROR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC1 (struct fsl_edma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_edma_engine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct fsl_edma_engine *fsl_edma = dev_id;
	unsigned int err, ch;
	struct edma_regs *regs = &fsl_edma->regs;

	err = FUNC1(fsl_edma, regs->errl);
	if (!err)
		return IRQ_NONE;

	for (ch = 0; ch < fsl_edma->n_chans; ch++) {
		if (err & (0x1 << ch)) {
			FUNC3(&fsl_edma->chans[ch]);
			FUNC2(fsl_edma, FUNC0(ch), regs->cerr);
			fsl_edma->chans[ch].status = DMA_ERROR;
			fsl_edma->chans[ch].idle = true;
		}
	}
	return IRQ_HANDLED;
}