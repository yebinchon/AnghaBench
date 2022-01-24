#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct edma_regs {int /*<<< orphan*/  cint; int /*<<< orphan*/  intl; } ;
struct fsl_edma_engine {unsigned int n_chans; struct fsl_edma_chan* chans; struct edma_regs regs; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct fsl_edma_chan {int idle; TYPE_2__ vchan; TYPE_1__* edesc; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_7__ {int /*<<< orphan*/  node; } ;
struct TYPE_5__ {TYPE_3__ vdesc; int /*<<< orphan*/  iscyclic; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC1 (struct fsl_edma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_edma_engine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_edma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct fsl_edma_engine *fsl_edma = dev_id;
	unsigned int intr, ch;
	struct edma_regs *regs = &fsl_edma->regs;
	struct fsl_edma_chan *fsl_chan;

	intr = FUNC1(fsl_edma, regs->intl);
	if (!intr)
		return IRQ_NONE;

	for (ch = 0; ch < fsl_edma->n_chans; ch++) {
		if (intr & (0x1 << ch)) {
			FUNC2(fsl_edma, FUNC0(ch), regs->cint);

			fsl_chan = &fsl_edma->chans[ch];

			FUNC5(&fsl_chan->vchan.lock);
			if (!fsl_chan->edesc->iscyclic) {
				FUNC4(&fsl_chan->edesc->vdesc.node);
				FUNC7(&fsl_chan->edesc->vdesc);
				fsl_chan->edesc = NULL;
				fsl_chan->status = DMA_COMPLETE;
				fsl_chan->idle = true;
			} else {
				FUNC8(&fsl_chan->edesc->vdesc);
			}

			if (!fsl_chan->edesc)
				FUNC3(fsl_chan);

			FUNC6(&fsl_chan->vchan.lock);
		}
	}
	return IRQ_HANDLED;
}