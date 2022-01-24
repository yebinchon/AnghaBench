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
struct drm_dp_sideband_msg_tx {int seqno; struct drm_dp_mst_branch* dst; } ;
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  qlock; } ;
struct drm_dp_mst_branch {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_dp_sideband_msg_tx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_sideband_msg_tx*) ; 
 struct drm_dp_sideband_msg_tx* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*) ; 

__attribute__((used)) static int FUNC6(struct drm_dp_mst_topology_mgr *mgr,
				    struct drm_dp_mst_branch *mstb,
				    int req_type, int seqno, bool broadcast)
{
	struct drm_dp_sideband_msg_tx *txmsg;

	txmsg = FUNC2(sizeof(*txmsg), GFP_KERNEL);
	if (!txmsg)
		return -ENOMEM;

	txmsg->dst = mstb;
	txmsg->seqno = seqno;
	FUNC0(txmsg, req_type);

	FUNC3(&mgr->qlock);

	FUNC5(mgr, txmsg);

	FUNC4(&mgr->qlock);

	FUNC1(txmsg);
	return 0;
}