#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * next; } ;
struct iop_adma_desc_slot {TYPE_3__ chain_node; int /*<<< orphan*/  slots_per_op; int /*<<< orphan*/  idx; int /*<<< orphan*/  async_tx; } ;
struct iop_adma_chan {TYPE_2__* device; int /*<<< orphan*/  chain; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iop_adma_desc_slot*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC4(struct iop_adma_desc_slot *desc,
	struct iop_adma_chan *iop_chan)
{
	/* the client is allowed to attach dependent operations
	 * until 'ack' is set
	 */
	if (!FUNC0(&desc->async_tx))
		return 0;

	/* leave the last descriptor in the chain
	 * so we can append to it
	 */
	if (desc->chain_node.next == &iop_chan->chain)
		return 1;

	FUNC1(iop_chan->device->common.dev,
		"\tfree slot: %d slots_per_op: %d\n",
		desc->idx, desc->slots_per_op);

	FUNC3(&desc->chain_node);
	FUNC2(desc);

	return 0;
}