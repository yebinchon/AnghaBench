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
struct drm_dp_sideband_msg_tx {int /*<<< orphan*/  next; } ;
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  qlock; int /*<<< orphan*/  tx_msg_downq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_dp_mst_topology_mgr*) ; 

__attribute__((used)) static void FUNC5(struct drm_dp_mst_topology_mgr *mgr,
				 struct drm_dp_sideband_msg_tx *txmsg)
{
	FUNC2(&mgr->qlock);
	FUNC0(&txmsg->next, &mgr->tx_msg_downq);
	if (FUNC1(&mgr->tx_msg_downq))
		FUNC4(mgr);
	FUNC3(&mgr->qlock);
}