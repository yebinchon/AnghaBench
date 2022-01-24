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
struct drm_dp_sideband_msg_tx {scalar_t__ state; size_t seqno; int /*<<< orphan*/  next; } ;
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  qlock; int /*<<< orphan*/  tx_waitq; } ;
struct drm_dp_mst_branch {int /*<<< orphan*/ ** tx_slots; struct drm_dp_mst_topology_mgr* mgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct drm_dp_sideband_msg_tx*,scalar_t__,size_t) ; 
 scalar_t__ DRM_DP_SIDEBAND_TX_QUEUED ; 
 scalar_t__ DRM_DP_SIDEBAND_TX_SENT ; 
 scalar_t__ DRM_DP_SIDEBAND_TX_START_SEND ; 
 scalar_t__ DRM_DP_SIDEBAND_TX_TIMEOUT ; 
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct drm_dp_mst_branch *mstb,
				    struct drm_dp_sideband_msg_tx *txmsg)
{
	struct drm_dp_mst_topology_mgr *mgr = mstb->mgr;
	int ret;

	ret = FUNC5(mgr->tx_waitq,
				 FUNC1(mgr, txmsg),
				 (4 * HZ));
	FUNC3(&mstb->mgr->qlock);
	if (ret > 0) {
		if (txmsg->state == DRM_DP_SIDEBAND_TX_TIMEOUT) {
			ret = -EIO;
			goto out;
		}
	} else {
		FUNC0("timedout msg send %p %d %d\n", txmsg, txmsg->state, txmsg->seqno);

		/* dump some state */
		ret = -EIO;

		/* remove from q */
		if (txmsg->state == DRM_DP_SIDEBAND_TX_QUEUED ||
		    txmsg->state == DRM_DP_SIDEBAND_TX_START_SEND) {
			FUNC2(&txmsg->next);
		}

		if (txmsg->state == DRM_DP_SIDEBAND_TX_START_SEND ||
		    txmsg->state == DRM_DP_SIDEBAND_TX_SENT) {
			mstb->tx_slots[txmsg->seqno] = NULL;
		}
	}
out:
	FUNC4(&mgr->qlock);

	return ret;
}