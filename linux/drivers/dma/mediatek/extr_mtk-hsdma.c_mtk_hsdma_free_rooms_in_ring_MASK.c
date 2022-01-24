#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct mtk_hsdma_vdesc {int /*<<< orphan*/  residue; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct mtk_hsdma_vchan {int issue_synchronize; TYPE_4__ vc; int /*<<< orphan*/  issue_completion; int /*<<< orphan*/  desc_hw_processing; } ;
struct mtk_hsdma_pdesc {int /*<<< orphan*/  desc2; int /*<<< orphan*/  desc1; } ;
struct TYPE_9__ {size_t cur_rptr; struct mtk_hsdma_cb* cb; struct mtk_hsdma_pdesc* rxd; } ;
struct mtk_hsdma_pchan {int /*<<< orphan*/  nr_free; TYPE_3__ ring; } ;
struct mtk_hsdma_device {int dma_requests; struct mtk_hsdma_vchan* vc; TYPE_1__* soc; struct mtk_hsdma_pchan* pc; } ;
struct mtk_hsdma_cb {TYPE_5__* vd; scalar_t__ flag; } ;
typedef  int __le32 ;
struct TYPE_8__ {int /*<<< orphan*/  chan; } ;
struct TYPE_11__ {int /*<<< orphan*/  node; TYPE_2__ tx; } ;
struct TYPE_7__ {int ddone; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int MTK_DMA_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_HSDMA_INT_ENABLE ; 
 int MTK_HSDMA_INT_RXDONE ; 
 int /*<<< orphan*/  MTK_HSDMA_INT_STATUS ; 
 size_t FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  MTK_HSDMA_RX_CPU ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_hsdma_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct mtk_hsdma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mtk_hsdma_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mtk_hsdma_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mtk_hsdma_device*,struct mtk_hsdma_vchan*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct mtk_hsdma_vchan* FUNC18 (int /*<<< orphan*/ ) ; 
 struct mtk_hsdma_vdesc* FUNC19 (TYPE_5__*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC22 () ; 

__attribute__((used)) static void FUNC23(struct mtk_hsdma_device *hsdma)
{
	struct mtk_hsdma_vchan *hvc;
	struct mtk_hsdma_pdesc *rxd;
	struct mtk_hsdma_vdesc *hvd;
	struct mtk_hsdma_pchan *pc;
	struct mtk_hsdma_cb *cb;
	int i = MTK_DMA_SIZE;
	__le32 desc2;
	u32 status;
	u16 next;

	/* Read IRQ status */
	status = FUNC12(hsdma, MTK_HSDMA_INT_STATUS);
	if (FUNC20(!(status & MTK_HSDMA_INT_RXDONE)))
		goto rx_done;

	pc = hsdma->pc;

	/*
	 * Using a fail-safe loop with iterations of up to MTK_DMA_SIZE to
	 * reclaim these finished descriptors: The most number of PDs the ISR
	 * can handle at one time shouldn't be more than MTK_DMA_SIZE so we
	 * take it as limited count instead of just using a dangerous infinite
	 * poll.
	 */
	while (i--) {
		next = FUNC2(pc->ring.cur_rptr,
					       MTK_DMA_SIZE);
		rxd = &pc->ring.rxd[next];

		/*
		 * If MTK_HSDMA_DESC_DDONE is no specified, that means data
		 * moving for the PD is still under going.
		 */
		desc2 = FUNC3(rxd->desc2);
		if (!(desc2 & hsdma->soc->ddone))
			break;

		cb = &pc->ring.cb[next];
		if (FUNC20(!cb->vd)) {
			FUNC8(FUNC9(hsdma), "cb->vd cannot be null\n");
			break;
		}

		/* Update residue of VD the associated PD belonged to */
		hvd = FUNC19(cb->vd);
		hvd->residue -= FUNC1(rxd->desc2);

		/* Complete VD until the relevant last PD is finished */
		if (FUNC0(cb->flag)) {
			hvc = FUNC18(cb->vd->tx.chan);

			FUNC16(&hvc->vc.lock);

			/* Remove VD from list desc_hw_processing */
			FUNC10(&cb->vd->node);

			/* Add VD into list desc_completed */
			FUNC21(cb->vd);

			if (hvc->issue_synchronize &&
			    FUNC11(&hvc->desc_hw_processing)) {
				FUNC7(&hvc->issue_completion);
				hvc->issue_synchronize = false;
			}
			FUNC17(&hvc->vc.lock);

			cb->flag = 0;
		}

		cb->vd = 0;

		/*
		 * Recycle the RXD with the helper WRITE_ONCE that can ensure
		 * data written into RAM would really happens.
		 */
		FUNC4(rxd->desc1, 0);
		FUNC4(rxd->desc2, 0);
		pc->ring.cur_rptr = next;

		/* Release rooms */
		FUNC5(&pc->nr_free);
	}

	/* Ensure all changes indeed done before we're going on */
	FUNC22();

	/* Update CPU pointer for those completed PDs */
	FUNC14(hsdma, MTK_HSDMA_RX_CPU, pc->ring.cur_rptr);

	/*
	 * Acking the pending IRQ allows hardware no longer to keep the used
	 * IRQ line in certain trigger state when software has completed all
	 * the finished physical descriptors.
	 */
	if (FUNC6(&pc->nr_free) >= MTK_DMA_SIZE - 1)
		FUNC14(hsdma, MTK_HSDMA_INT_STATUS, status);

	/* ASAP handles pending VDs in all VCs after freeing some rooms */
	for (i = 0; i < hsdma->dma_requests; i++) {
		hvc = &hsdma->vc[i];
		FUNC16(&hvc->vc.lock);
		FUNC15(hsdma, hvc);
		FUNC17(&hvc->vc.lock);
	}

rx_done:
	/* All completed PDs are cleaned up, so enable interrupt again */
	FUNC13(hsdma, MTK_HSDMA_INT_ENABLE, MTK_HSDMA_INT_RXDONE);
}