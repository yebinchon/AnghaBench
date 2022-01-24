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
struct TYPE_2__ {int cmd_dma; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int MTK_CDR_STAT_CLR ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int MTK_CNT_RST ; 
 int MTK_DESC_ATP_PRESENT ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int MTK_DESC_OFF ; 
 int FUNC14 (int) ; 
 int MTK_DESC_RING_SZ ; 
 int FUNC15 (int) ; 
 int MTK_DESC_SZ ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC17(struct mtk_cryp *cryp,
				    int i, struct mtk_sys_cap *cap)
{
	/* Full descriptor that fits FIFO minus one */
	u32 count =
		((1 << FUNC11(cap->hia_opt)) / MTK_DESC_SZ) - 1;

	/* Temporarily disable external triggering */
	FUNC16(0, cryp->base + FUNC2(i));

	/* Clear CDR count */
	FUNC16(MTK_CNT_RST, cryp->base + FUNC5(i));
	FUNC16(MTK_CNT_RST, cryp->base + FUNC7(i));

	FUNC16(0, cryp->base + FUNC6(i));
	FUNC16(0, cryp->base + FUNC8(i));
	FUNC16(0, cryp->base + FUNC4(i));

	/* Configure CDR host address space */
	FUNC16(0, cryp->base + FUNC0(i));
	FUNC16(cryp->ring[i]->cmd_dma, cryp->base + FUNC1(i));

	FUNC16(MTK_DESC_RING_SZ, cryp->base + FUNC9(i));

	/* Clear and disable all CDR interrupts */
	FUNC16(MTK_CDR_STAT_CLR, cryp->base + FUNC10(i));

	/*
	 * Set command descriptor offset and enable additional
	 * token present in descriptor.
	 */
	FUNC16(FUNC15(MTK_DESC_SZ) |
		   FUNC14(MTK_DESC_OFF) |
	       MTK_DESC_ATP_PRESENT,
	       cryp->base + FUNC3(i));

	FUNC16(FUNC12(count * MTK_DESC_OFF) |
		   FUNC13(count * MTK_DESC_SZ),
		   cryp->base + FUNC2(i));
}