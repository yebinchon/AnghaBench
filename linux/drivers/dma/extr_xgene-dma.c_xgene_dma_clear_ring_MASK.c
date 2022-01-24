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
typedef  int /*<<< orphan*/  u32 ;
struct xgene_dma_ring {scalar_t__ owner; TYPE_1__* pdma; int /*<<< orphan*/  id; int /*<<< orphan*/  buf_num; } ;
struct TYPE_2__ {scalar_t__ csr_ring; } ;

/* Variables and functions */
 scalar_t__ XGENE_DMA_RING_ID ; 
 scalar_t__ XGENE_DMA_RING_ID_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ XGENE_DMA_RING_NE_INT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ XGENE_DMA_RING_OWNER_CPU ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_dma_ring*) ; 

__attribute__((used)) static void FUNC5(struct xgene_dma_ring *ring)
{
	u32 ring_id, val;

	if (ring->owner == XGENE_DMA_RING_OWNER_CPU) {
		/* Disable DMA Rx ring interrupt */
		val = FUNC2(ring->pdma->csr_ring +
			       XGENE_DMA_RING_NE_INT_MODE);
		FUNC1(val, ring->buf_num);
		FUNC3(val, ring->pdma->csr_ring +
			  XGENE_DMA_RING_NE_INT_MODE);
	}

	/* Clear DMA ring state */
	ring_id = FUNC0(ring->id);
	FUNC3(ring_id, ring->pdma->csr_ring + XGENE_DMA_RING_ID);

	FUNC3(0, ring->pdma->csr_ring + XGENE_DMA_RING_ID_BUF);
	FUNC4(ring);
}