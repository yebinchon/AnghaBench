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
typedef  int /*<<< orphan*/  uint64_t ;
struct dma_fence_chain {int /*<<< orphan*/  lock; int /*<<< orphan*/  base; scalar_t__ prev_seqno; int /*<<< orphan*/  work; struct dma_fence* fence; int /*<<< orphan*/  prev; } ;
struct dma_fence {scalar_t__ seqno; int /*<<< orphan*/  context; int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_fence_chain_irq_work ; 
 int /*<<< orphan*/  dma_fence_chain_ops ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct dma_fence_chain* FUNC7 (struct dma_fence*) ; 

void FUNC8(struct dma_fence_chain *chain,
			  struct dma_fence *prev,
			  struct dma_fence *fence,
			  uint64_t seqno)
{
	struct dma_fence_chain *prev_chain = FUNC7(prev);
	uint64_t context;

	FUNC6(&chain->lock);
	FUNC5(chain->prev, prev);
	chain->fence = fence;
	chain->prev_seqno = 0;
	FUNC3(&chain->work, dma_fence_chain_irq_work);

	/* Try to reuse the context of the previous chain node. */
	if (prev_chain && FUNC0(seqno, prev->seqno, prev->ops)) {
		context = prev->context;
		chain->prev_seqno = prev->seqno;
	} else {
		context = FUNC1(1);
		/* Make sure that we always have a valid sequence number. */
		if (prev_chain)
			seqno = FUNC4(prev->seqno, seqno);
	}

	FUNC2(&chain->base, &dma_fence_chain_ops,
		       &chain->lock, context, seqno);
}