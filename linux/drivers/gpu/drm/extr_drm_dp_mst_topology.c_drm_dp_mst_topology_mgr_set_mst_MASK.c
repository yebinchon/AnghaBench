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
struct drm_dp_payload {int num_slots; scalar_t__ start_slot; } ;
struct drm_dp_mst_topology_mgr {int mst_state; int* dpcd; int max_payloads; int /*<<< orphan*/  lock; scalar_t__ vcpi_mask; scalar_t__ payload_mask; int /*<<< orphan*/  payloads; int /*<<< orphan*/  aux; struct drm_dp_mst_branch* mst_primary; int /*<<< orphan*/  work; int /*<<< orphan*/  pbn_div; } ;
struct drm_dp_mst_branch {struct drm_dp_mst_topology_mgr* mgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DPCD_REV ; 
 int DP_MAX_LANE_COUNT_MASK ; 
 int /*<<< orphan*/  DP_MSTM_CTRL ; 
 int DP_MST_EN ; 
 int DP_RECEIVER_CAP_SIZE ; 
 int DP_UPSTREAM_IS_SRC ; 
 int DP_UP_REQ_EN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_mst_branch*) ; 
 struct drm_dp_mst_branch* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_dp_mst_topology_mgr*,int /*<<< orphan*/ ,struct drm_dp_payload*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_dp_mst_branch*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_dp_mst_branch*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  system_long_wq ; 

int FUNC14(struct drm_dp_mst_topology_mgr *mgr, bool mst_state)
{
	int ret = 0;
	struct drm_dp_mst_branch *mstb = NULL;

	FUNC10(&mgr->lock);
	if (mst_state == mgr->mst_state)
		goto out_unlock;

	mgr->mst_state = mst_state;
	/* set the device into MST mode */
	if (mst_state) {
		FUNC1(mgr->mst_primary);

		/* get dpcd info */
		ret = FUNC3(mgr->aux, DP_DPCD_REV, mgr->dpcd, DP_RECEIVER_CAP_SIZE);
		if (ret != DP_RECEIVER_CAP_SIZE) {
			FUNC0("failed to read DPCD\n");
			goto out_unlock;
		}

		if (!FUNC6(mgr->dpcd[1],
					      mgr->dpcd[2] & DP_MAX_LANE_COUNT_MASK,
					      &mgr->pbn_div)) {
			ret = -EINVAL;
			goto out_unlock;
		}

		/* add initial branch device at LCT 1 */
		mstb = FUNC2(1, NULL);
		if (mstb == NULL) {
			ret = -ENOMEM;
			goto out_unlock;
		}
		mstb->mgr = mgr;

		/* give this the main reference */
		mgr->mst_primary = mstb;
		FUNC7(mgr->mst_primary);

		ret = FUNC5(mgr->aux, DP_MSTM_CTRL,
							 DP_MST_EN | DP_UP_REQ_EN | DP_UPSTREAM_IS_SRC);
		if (ret < 0) {
			goto out_unlock;
		}

		{
			struct drm_dp_payload reset_pay;
			reset_pay.start_slot = 0;
			reset_pay.num_slots = 0x3f;
			FUNC4(mgr, 0, &reset_pay);
		}

		FUNC12(system_long_wq, &mgr->work);

		ret = 0;
	} else {
		/* disable MST on the device */
		mstb = mgr->mst_primary;
		mgr->mst_primary = NULL;
		/* this can fail if the device is gone */
		FUNC5(mgr->aux, DP_MSTM_CTRL, 0);
		ret = 0;
		FUNC9(mgr->payloads, 0, mgr->max_payloads * sizeof(struct drm_dp_payload));
		mgr->payload_mask = 0;
		FUNC13(0, &mgr->payload_mask);
		mgr->vcpi_mask = 0;
	}

out_unlock:
	FUNC11(&mgr->lock);
	if (mstb)
		FUNC8(mstb);
	return ret;

}