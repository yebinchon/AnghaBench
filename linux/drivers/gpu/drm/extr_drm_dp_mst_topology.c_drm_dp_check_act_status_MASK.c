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
typedef  int u8 ;
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int DP_PAYLOAD_ACT_HANDLED ; 
 int /*<<< orphan*/  DP_PAYLOAD_TABLE_UPDATE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct drm_dp_mst_topology_mgr *mgr)
{
	u8 status;
	int ret;
	int count = 0;

	do {
		ret = FUNC1(mgr->aux, DP_PAYLOAD_TABLE_UPDATE_STATUS, &status);

		if (ret < 0) {
			FUNC0("failed to read payload table status %d\n", ret);
			goto fail;
		}

		if (status & DP_PAYLOAD_ACT_HANDLED)
			break;
		count++;
		FUNC2(100);

	} while (count < 30);

	if (!(status & DP_PAYLOAD_ACT_HANDLED)) {
		FUNC0("failed to get ACT bit %d after %d retries\n", status, count);
		ret = -EINVAL;
		goto fail;
	}
	return 0;
fail:
	return ret;
}