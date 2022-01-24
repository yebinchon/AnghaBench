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
struct drm_dp_payload {int start_slot; int num_slots; } ;
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_PAYLOAD_ALLOCATE_SET ; 
 int DP_PAYLOAD_TABLE_UPDATED ; 
 int /*<<< orphan*/  DP_PAYLOAD_TABLE_UPDATE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct drm_dp_mst_topology_mgr *mgr,
				     int id, struct drm_dp_payload *payload)
{
	u8 payload_alloc[3], status;
	int ret;
	int retries = 0;

	FUNC3(mgr->aux, DP_PAYLOAD_TABLE_UPDATE_STATUS,
			   DP_PAYLOAD_TABLE_UPDATED);

	payload_alloc[0] = id;
	payload_alloc[1] = payload->start_slot;
	payload_alloc[2] = payload->num_slots;

	ret = FUNC2(mgr->aux, DP_PAYLOAD_ALLOCATE_SET, payload_alloc, 3);
	if (ret != 3) {
		FUNC0("failed to write payload allocation %d\n", ret);
		goto fail;
	}

retry:
	ret = FUNC1(mgr->aux, DP_PAYLOAD_TABLE_UPDATE_STATUS, &status);
	if (ret < 0) {
		FUNC0("failed to read payload table status %d\n", ret);
		goto fail;
	}

	if (!(status & DP_PAYLOAD_TABLE_UPDATED)) {
		retries++;
		if (retries < 20) {
			FUNC4(10000, 20000);
			goto retry;
		}
		FUNC0("status not set after read payload table status %d\n", status);
		ret = -EINVAL;
		goto fail;
	}
	ret = 0;
fail:
	return ret;
}