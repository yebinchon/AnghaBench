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
struct fw_ohci {int generation; int /*<<< orphan*/  lock; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int ESTALE ; 
 int LOCAL_BUS ; 
 int /*<<< orphan*/  OHCI1394_PhyReqFilterHiSet ; 
 int /*<<< orphan*/  OHCI1394_PhyReqFilterLoSet ; 
 int /*<<< orphan*/  FUNC0 (struct fw_ohci*) ; 
 struct fw_ohci* FUNC1 (struct fw_card*) ; 
 scalar_t__ param_remote_dma ; 
 int /*<<< orphan*/  FUNC2 (struct fw_ohci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct fw_card *card,
				int node_id, int generation)
{
	struct fw_ohci *ohci = FUNC1(card);
	unsigned long flags;
	int n, ret = 0;

	if (param_remote_dma)
		return 0;

	/*
	 * FIXME:  Make sure this bitmask is cleared when we clear the busReset
	 * interrupt bit.  Clear physReqResourceAllBuses on bus reset.
	 */

	FUNC3(&ohci->lock, flags);

	if (ohci->generation != generation) {
		ret = -ESTALE;
		goto out;
	}

	/*
	 * Note, if the node ID contains a non-local bus ID, physical DMA is
	 * enabled for _all_ nodes on remote buses.
	 */

	n = (node_id & 0xffc0) == LOCAL_BUS ? node_id & 0x3f : 63;
	if (n < 32)
		FUNC2(ohci, OHCI1394_PhyReqFilterLoSet, 1 << n);
	else
		FUNC2(ohci, OHCI1394_PhyReqFilterHiSet, 1 << (n - 32));

	FUNC0(ohci);
 out:
	FUNC4(&ohci->lock, flags);

	return ret;
}