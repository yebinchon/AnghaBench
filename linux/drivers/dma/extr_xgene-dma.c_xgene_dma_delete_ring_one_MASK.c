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
struct xgene_dma_ring {int /*<<< orphan*/ * desc_vaddr; int /*<<< orphan*/  desc_paddr; int /*<<< orphan*/  size; TYPE_1__* pdma; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_dma_ring*) ; 

__attribute__((used)) static void FUNC2(struct xgene_dma_ring *ring)
{
	/* Clear DMA ring configurations */
	FUNC1(ring);

	/* De-allocate DMA ring descriptor */
	if (ring->desc_vaddr) {
		FUNC0(ring->pdma->dev, ring->size,
				  ring->desc_vaddr, ring->desc_paddr);
		ring->desc_vaddr = NULL;
	}
}