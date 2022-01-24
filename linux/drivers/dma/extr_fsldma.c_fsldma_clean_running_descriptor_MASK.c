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
struct fsldma_chan {int /*<<< orphan*/  desc_pool; int /*<<< orphan*/  ld_completed; } ;
struct TYPE_2__ {int /*<<< orphan*/  phys; } ;
struct fsl_desc_sw {TYPE_1__ async_tx; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fsl_desc_sw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fsldma_chan *chan,
		struct fsl_desc_sw *desc)
{
	/* Remove from the list of transactions */
	FUNC3(&desc->node);

	/*
	 * the client is allowed to attach dependent operations
	 * until 'ack' is set
	 */
	if (!FUNC0(&desc->async_tx)) {
		/*
		 * Move this descriptor to the list of descriptors which is
		 * completed, but still awaiting the 'ack' bit to be set.
		 */
		FUNC2(&desc->node, &chan->ld_completed);
		return;
	}

	FUNC1(chan->desc_pool, desc, desc->async_tx.phys);
}