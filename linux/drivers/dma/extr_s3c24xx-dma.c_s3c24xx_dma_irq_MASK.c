#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* next; } ;
struct s3c24xx_txd {TYPE_5__ dsg_list; TYPE_4__* at; int /*<<< orphan*/  vd; scalar_t__ cyclic; } ;
struct s3c24xx_dma_phy {int /*<<< orphan*/  id; TYPE_2__* host; struct s3c24xx_dma_chan* serving; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct s3c24xx_dma_chan {TYPE_3__ vc; struct s3c24xx_txd* at; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_7__ {TYPE_1__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c24xx_dma_chan*,struct s3c24xx_txd*) ; 
 int /*<<< orphan*/  FUNC5 (struct s3c24xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct s3c24xx_dma_phy*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *data)
{
	struct s3c24xx_dma_phy *phy = data;
	struct s3c24xx_dma_chan *s3cchan = phy->serving;
	struct s3c24xx_txd *txd;

	FUNC0(&phy->host->pdev->dev, "interrupt on channel %d\n", phy->id);

	/*
	 * Interrupts happen to notify the completion of a transfer and the
	 * channel should have moved into its stop state already on its own.
	 * Therefore interrupts on channels not bound to a virtual channel
	 * should never happen. Nevertheless send a terminate command to the
	 * channel if the unlikely case happens.
	 */
	if (FUNC9(!s3cchan)) {
		FUNC1(&phy->host->pdev->dev, "interrupt on unused channel %d\n",
			phy->id);

		FUNC6(phy);

		return IRQ_HANDLED;
	}

	FUNC7(&s3cchan->vc.lock);
	txd = s3cchan->at;
	if (txd) {
		/* when more sg's are in this txd, start the next one */
		if (!FUNC2(txd->at, &txd->dsg_list)) {
			txd->at = txd->at->next;
			if (txd->cyclic)
				FUNC11(&txd->vd);
			FUNC4(s3cchan, txd);
		} else if (!txd->cyclic) {
			s3cchan->at = NULL;
			FUNC10(&txd->vd);

			/*
			 * And start the next descriptor (if any),
			 * otherwise free this channel.
			 */
			if (FUNC12(&s3cchan->vc))
				FUNC5(s3cchan);
			else
				FUNC3(s3cchan);
		} else {
			FUNC11(&txd->vd);

			/* Cyclic: reset at beginning */
			txd->at = txd->dsg_list.next;
			FUNC4(s3cchan, txd);
		}
	}
	FUNC8(&s3cchan->vc.lock);

	return IRQ_HANDLED;
}