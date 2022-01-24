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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct xgene_dma_ring {int slots; int size; scalar_t__ owner; TYPE_1__* pdma; int /*<<< orphan*/  buf_num; struct xgene_dma_desc_hw* desc_hw; int /*<<< orphan*/  num; int /*<<< orphan*/  id; int /*<<< orphan*/  cfgsize; int /*<<< orphan*/  desc_paddr; void* state; } ;
struct xgene_dma_desc_hw {int /*<<< orphan*/  m0; } ;
struct TYPE_2__ {scalar_t__ csr_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  XGENE_DMA_DESC_EMPTY_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ XGENE_DMA_RING_ID ; 
 scalar_t__ XGENE_DMA_RING_ID_BUF ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ XGENE_DMA_RING_NE_INT_MODE ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ XGENE_DMA_RING_OWNER_CPU ; 
 scalar_t__ XGENE_DMA_RING_OWNER_DMA ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XGENE_DMA_RING_TYPE_REGULAR ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int XGENE_DMA_RING_WQ_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 size_t FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct xgene_dma_ring*) ; 
 int /*<<< orphan*/  FUNC17 (struct xgene_dma_ring*) ; 

__attribute__((used)) static void FUNC18(struct xgene_dma_ring *ring)
{
	void *ring_cfg = ring->state;
	u64 addr = ring->desc_paddr;
	u32 i, val;

	ring->slots = ring->size / XGENE_DMA_RING_WQ_DESC_SIZE;

	/* Clear DMA ring state */
	FUNC16(ring);

	/* Set DMA ring type */
	FUNC12(ring_cfg, XGENE_DMA_RING_TYPE_REGULAR);

	if (ring->owner == XGENE_DMA_RING_OWNER_DMA) {
		/* Set recombination buffer and timeout */
		FUNC7(ring_cfg);
		FUNC9(ring_cfg);
		FUNC8(ring_cfg);
	}

	/* Initialize DMA ring state */
	FUNC10(ring_cfg);
	FUNC0(ring_cfg);
	FUNC3(ring_cfg);
	FUNC2(ring_cfg, addr);
	FUNC1(ring_cfg, addr);
	FUNC11(ring_cfg, ring->cfgsize);

	/* Write DMA ring configurations */
	FUNC17(ring);

	/* Set DMA ring id */
	FUNC15(FUNC5(ring->id),
		  ring->pdma->csr_ring + XGENE_DMA_RING_ID);

	/* Set DMA ring buffer */
	FUNC15(FUNC4(ring->num),
		  ring->pdma->csr_ring + XGENE_DMA_RING_ID_BUF);

	if (ring->owner != XGENE_DMA_RING_OWNER_CPU)
		return;

	/* Set empty signature to DMA Rx ring descriptors */
	for (i = 0; i < ring->slots; i++) {
		struct xgene_dma_desc_hw *desc;

		desc = &ring->desc_hw[i];
		desc->m0 = FUNC13(XGENE_DMA_DESC_EMPTY_SIGNATURE);
	}

	/* Enable DMA Rx ring interrupt */
	val = FUNC14(ring->pdma->csr_ring + XGENE_DMA_RING_NE_INT_MODE);
	FUNC6(val, ring->buf_num);
	FUNC15(val, ring->pdma->csr_ring + XGENE_DMA_RING_NE_INT_MODE);
}