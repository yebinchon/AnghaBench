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
struct TYPE_2__ {int /*<<< orphan*/  phys; } ;
struct xgene_dma_desc_sw {TYPE_1__ tx; int /*<<< orphan*/  node; } ;
struct xgene_dma_chan {int /*<<< orphan*/  desc_pool; int /*<<< orphan*/  ld_completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_dma_chan*,char*,struct xgene_dma_desc_sw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct xgene_dma_desc_sw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct xgene_dma_chan *chan,
					       struct xgene_dma_desc_sw *desc)
{
	/* Remove from the list of running transactions */
	FUNC4(&desc->node);

	/*
	 * the client is allowed to attach dependent operations
	 * until 'ack' is set
	 */
	if (!FUNC0(&desc->tx)) {
		/*
		 * Move this descriptor to the list of descriptors which is
		 * completed, but still awaiting the 'ack' bit to be set.
		 */
		FUNC3(&desc->node, &chan->ld_completed);
		return;
	}

	FUNC1(chan, "LD %p free\n", desc);
	FUNC2(chan->desc_pool, desc, desc->tx.phys);
}