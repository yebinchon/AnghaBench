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
struct mtk_hsdma_ring {int /*<<< orphan*/  tphys; int /*<<< orphan*/  txd; int /*<<< orphan*/  cb; } ;
struct mtk_hsdma_pchan {int /*<<< orphan*/  sz_ring; struct mtk_hsdma_ring ring; } ;
struct mtk_hsdma_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MTK_DMA_SIZE ; 
 int /*<<< orphan*/  MTK_HSDMA_GLO ; 
 int /*<<< orphan*/  MTK_HSDMA_GLO_DMA ; 
 int /*<<< orphan*/  MTK_HSDMA_INT_ENABLE ; 
 int /*<<< orphan*/  MTK_HSDMA_INT_RXDONE ; 
 int /*<<< orphan*/  MTK_HSDMA_RX_BASE ; 
 int /*<<< orphan*/  MTK_HSDMA_RX_CNT ; 
 int /*<<< orphan*/  MTK_HSDMA_RX_CPU ; 
 int /*<<< orphan*/  MTK_HSDMA_TX_BASE ; 
 int /*<<< orphan*/  MTK_HSDMA_TX_CNT ; 
 int /*<<< orphan*/  MTK_HSDMA_TX_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hsdma_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_hsdma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_hsdma_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_hsdma_device*) ; 

__attribute__((used)) static void FUNC6(struct mtk_hsdma_device *hsdma,
				 struct mtk_hsdma_pchan *pc)
{
	struct mtk_hsdma_ring *ring = &pc->ring;

	/* Disable HSDMA and then wait for the completion */
	FUNC3(hsdma, MTK_HSDMA_GLO, MTK_HSDMA_GLO_DMA);
	FUNC5(hsdma);

	/* Reset pointer in the ring */
	FUNC3(hsdma, MTK_HSDMA_INT_ENABLE, MTK_HSDMA_INT_RXDONE);
	FUNC4(hsdma, MTK_HSDMA_TX_BASE, 0);
	FUNC4(hsdma, MTK_HSDMA_TX_CNT, 0);
	FUNC4(hsdma, MTK_HSDMA_TX_CPU, 0);
	FUNC4(hsdma, MTK_HSDMA_RX_BASE, 0);
	FUNC4(hsdma, MTK_HSDMA_RX_CNT, 0);
	FUNC4(hsdma, MTK_HSDMA_RX_CPU, MTK_DMA_SIZE - 1);

	FUNC2(ring->cb);

	FUNC0(FUNC1(hsdma),
			  pc->sz_ring, ring->txd, ring->tphys);
}