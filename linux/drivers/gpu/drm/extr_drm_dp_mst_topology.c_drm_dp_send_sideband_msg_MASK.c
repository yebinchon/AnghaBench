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
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  aux; int /*<<< orphan*/  max_dpcd_transaction_bytes; } ;

/* Variables and functions */
 int DP_SIDEBAND_MSG_DOWN_REQ_BASE ; 
 int DP_SIDEBAND_MSG_UP_REP_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EIO ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct drm_dp_mst_topology_mgr *mgr,
				    bool up, u8 *msg, int len)
{
	int ret;
	int regbase = up ? DP_SIDEBAND_MSG_UP_REP_BASE : DP_SIDEBAND_MSG_DOWN_REQ_BASE;
	int tosend, total, offset;
	int retries = 0;

retry:
	total = len;
	offset = 0;
	do {
		tosend = FUNC2(mgr->max_dpcd_transaction_bytes, 16, total);

		ret = FUNC1(mgr->aux, regbase + offset,
					&msg[offset],
					tosend);
		if (ret != tosend) {
			if (ret == -EIO && retries < 5) {
				retries++;
				goto retry;
			}
			FUNC0("failed to dpcd write %d %d\n", tosend, ret);

			return -EIO;
		}
		offset += tosend;
		total -= tosend;
	} while (total > 0);
	return 0;
}