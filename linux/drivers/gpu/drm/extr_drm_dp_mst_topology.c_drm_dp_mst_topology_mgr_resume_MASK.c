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
typedef  int /*<<< orphan*/  u8 ;
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  lock; scalar_t__ mst_primary; int /*<<< orphan*/  aux; int /*<<< orphan*/ * dpcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DPCD_REV ; 
 int /*<<< orphan*/  DP_GUID ; 
 int /*<<< orphan*/  DP_MSTM_CTRL ; 
 int DP_MST_EN ; 
 int DP_RECEIVER_CAP_SIZE ; 
 int DP_UPSTREAM_IS_SRC ; 
 int DP_UP_REQ_EN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_dp_mst_topology_mgr *mgr)
{
	int ret = 0;

	FUNC4(&mgr->lock);

	if (mgr->mst_primary) {
		int sret;
		u8 guid[16];

		sret = FUNC2(mgr->aux, DP_DPCD_REV, mgr->dpcd, DP_RECEIVER_CAP_SIZE);
		if (sret != DP_RECEIVER_CAP_SIZE) {
			FUNC0("dpcd read failed - undocked during suspend?\n");
			ret = -1;
			goto out_unlock;
		}

		ret = FUNC3(mgr->aux, DP_MSTM_CTRL,
					 DP_MST_EN | DP_UP_REQ_EN | DP_UPSTREAM_IS_SRC);
		if (ret < 0) {
			FUNC0("mst write failed - undocked during suspend?\n");
			ret = -1;
			goto out_unlock;
		}

		/* Some hubs forget their guids after they resume */
		sret = FUNC2(mgr->aux, DP_GUID, guid, 16);
		if (sret != 16) {
			FUNC0("dpcd read failed - undocked during suspend?\n");
			ret = -1;
			goto out_unlock;
		}
		FUNC1(mgr->mst_primary, guid);

		ret = 0;
	} else
		ret = -1;

out_unlock:
	FUNC5(&mgr->lock);
	return ret;
}