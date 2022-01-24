#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fwnet_packet_task {int enqueued; scalar_t__ outstanding_pkts; struct fwnet_device* dev; } ;
struct fwnet_device {int /*<<< orphan*/  lock; TYPE_2__* netdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fwnet_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fwnet_packet_task*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct fwnet_packet_task *ptask)
{
	struct fwnet_device *dev = ptask->dev;
	unsigned long flags;
	bool free;

	FUNC2(&dev->lock, flags);

	/* One fragment failed; don't try to send remaining fragments. */
	ptask->outstanding_pkts = 0;

	/* Check whether we or the networking TX soft-IRQ is last user. */
	free = ptask->enqueued;
	if (free)
		FUNC0(dev);

	dev->netdev->stats.tx_dropped++;
	dev->netdev->stats.tx_errors++;

	FUNC3(&dev->lock, flags);

	if (free)
		FUNC1(ptask);
}