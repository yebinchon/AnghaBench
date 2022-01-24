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
typedef  int u64 ;
struct edma_regs {int /*<<< orphan*/  cint; int /*<<< orphan*/  intl; int /*<<< orphan*/  inth; } ;
struct fsl_edma_engine {unsigned int n_chans; struct fsl_edma_chan* chans; struct edma_regs regs; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct fsl_edma_chan {int idle; TYPE_2__ vchan; TYPE_1__* edesc; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_7__ {int /*<<< orphan*/  node; } ;
struct TYPE_5__ {TYPE_3__ vdesc; int /*<<< orphan*/  iscyclic; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  DMA_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_edma_chan*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct fsl_edma_engine *mcf_edma = dev_id;
	struct edma_regs *regs = &mcf_edma->regs;
	unsigned int ch;
	struct fsl_edma_chan *mcf_chan;
	u64 intmap;

	intmap = FUNC3(regs->inth);
	intmap <<= 32;
	intmap |= FUNC3(regs->intl);
	if (!intmap)
		return IRQ_NONE;

	for (ch = 0; ch < mcf_edma->n_chans; ch++) {
		if (intmap & FUNC0(ch)) {
			FUNC4(FUNC1(ch), regs->cint);

			mcf_chan = &mcf_edma->chans[ch];

			FUNC6(&mcf_chan->vchan.lock);
			if (!mcf_chan->edesc->iscyclic) {
				FUNC5(&mcf_chan->edesc->vdesc.node);
				FUNC8(&mcf_chan->edesc->vdesc);
				mcf_chan->edesc = NULL;
				mcf_chan->status = DMA_COMPLETE;
				mcf_chan->idle = true;
			} else {
				FUNC9(&mcf_chan->edesc->vdesc);
			}

			if (!mcf_chan->edesc)
				FUNC2(mcf_chan);

			FUNC7(&mcf_chan->vchan.lock);
		}
	}

	return IRQ_HANDLED;
}