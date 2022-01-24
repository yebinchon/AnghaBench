#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  prev; } ;
struct fsldma_chan {TYPE_2__ ld_pending; } ;
struct TYPE_4__ {int /*<<< orphan*/  phys; } ;
struct fsl_desc_sw {int /*<<< orphan*/  tx_list; TYPE_1__ async_tx; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsldma_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fsl_desc_sw* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fsldma_chan *chan, struct fsl_desc_sw *desc)
{
	struct fsl_desc_sw *tail = FUNC3(chan->ld_pending.prev);

	if (FUNC0(&chan->ld_pending))
		goto out_splice;

	/*
	 * Add the hardware descriptor to the chain of hardware descriptors
	 * that already exists in memory.
	 *
	 * This will un-set the EOL bit of the existing transaction, and the
	 * last link in this transaction will become the EOL descriptor.
	 */
	FUNC2(chan, &tail->hw, desc->async_tx.phys);

	/*
	 * Add the software descriptor and all children to the list
	 * of pending transactions
	 */
out_splice:
	FUNC1(&desc->tx_list, &chan->ld_pending);
}