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
typedef  int /*<<< orphan*/  u32 ;
struct xgene_dma_ring {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int XGENE_DMA_RING_NUM_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_dma_ring*) ; 

__attribute__((used)) static void FUNC2(struct xgene_dma_ring *ring)
{
	FUNC0(ring->state, 0, sizeof(u32) * XGENE_DMA_RING_NUM_CONFIG);
	FUNC1(ring);
}