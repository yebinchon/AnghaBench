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
typedef  int u32 ;
struct mtk_sys_cap {int /*<<< orphan*/  hia_opt; } ;
struct mtk_cryp {scalar_t__ base; TYPE_1__** ring; } ;
struct TYPE_2__ {int res_dma; } ;

/* Variables and functions */
 int MTK_CNT_RST ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int MTK_DESC_OFF ; 
 int FUNC2 (int) ; 
 int MTK_DESC_OVL_IRQ_EN ; 
 int MTK_DESC_RING_SZ ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_DESC_SZ ; 
 int MTK_RDR_PROC_MODE ; 
 int MTK_RDR_PROC_THRESH ; 
 int MTK_RDR_STAT_CLR ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC18(struct mtk_cryp *cryp,
				    int i, struct mtk_sys_cap *cap)
{
	u32 rndup = 2;
	u32 count = ((1 << FUNC4(cap->hia_opt)) / rndup) - 1;

	/* Temporarily disable external triggering */
	FUNC17(0, cryp->base + FUNC7(i));

	/* Clear RDR count */
	FUNC17(MTK_CNT_RST, cryp->base + FUNC10(i));
	FUNC17(MTK_CNT_RST, cryp->base + FUNC12(i));

	FUNC17(0, cryp->base + FUNC11(i));
	FUNC17(0, cryp->base + FUNC13(i));
	FUNC17(0, cryp->base + FUNC9(i));

	/* Configure RDR host address space */
	FUNC17(0, cryp->base + FUNC5(i));
	FUNC17(cryp->ring[i]->res_dma, cryp->base + FUNC6(i));

	FUNC17(MTK_DESC_RING_SZ, cryp->base + FUNC14(i));
	FUNC17(MTK_RDR_STAT_CLR, cryp->base + FUNC15(i));

	/*
	 * RDR manager generates update interrupts on a per-completed-packet,
	 * and the rd_proc_thresh_irq interrupt is fired when proc_pkt_count
	 * for the RDR exceeds the number of packets.
	 */
	FUNC17(MTK_RDR_PROC_THRESH | MTK_RDR_PROC_MODE,
	       cryp->base + FUNC16(i));

	/*
	 * Configure a threshold and time-out value for the processed
	 * result descriptors (or complete packets) that are written to
	 * the RDR.
	 */
	FUNC17(FUNC3(MTK_DESC_SZ) | FUNC2(MTK_DESC_OFF),
	       cryp->base + FUNC8(i));

	/*
	 * Configure HIA fetch size and fetch threshold that are used to
	 * fetch blocks of multiple descriptors.
	 */
	FUNC17(FUNC0(count * MTK_DESC_OFF) |
	       FUNC1(count * rndup) |
	       MTK_DESC_OVL_IRQ_EN,
		   cryp->base + FUNC7(i));
}