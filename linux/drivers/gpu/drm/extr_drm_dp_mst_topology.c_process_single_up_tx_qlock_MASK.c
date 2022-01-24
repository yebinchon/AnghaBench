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
struct drm_dp_sideband_msg_tx {int seqno; TYPE_1__* dst; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** tx_slots; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*,int) ; 

__attribute__((used)) static void FUNC4(struct drm_dp_mst_topology_mgr *mgr,
				       struct drm_dp_sideband_msg_tx *txmsg)
{
	int ret;

	/* construct a chunk from the first msg in the tx_msg queue */
	ret = FUNC3(mgr, txmsg, true);

	if (ret != 1)
		FUNC1("failed to send msg in q %d\n", ret);

	if (txmsg->seqno != -1) {
		FUNC2((unsigned int)txmsg->seqno >
			FUNC0(txmsg->dst->tx_slots));
		txmsg->dst->tx_slots[txmsg->seqno] = NULL;
	}
}