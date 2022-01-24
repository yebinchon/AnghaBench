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
struct drm_dp_mst_topology_mgr {int sink_count; } ;

/* Variables and functions */
 int DP_DOWN_REP_MSG_RDY ; 
 int DP_UP_REQ_MSG_RDY ; 
 int FUNC0 (struct drm_dp_mst_topology_mgr*) ; 
 int FUNC1 (struct drm_dp_mst_topology_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_dp_mst_topology_mgr*) ; 

int FUNC3(struct drm_dp_mst_topology_mgr *mgr, u8 *esi, bool *handled)
{
	int ret = 0;
	int sc;
	*handled = false;
	sc = esi[0] & 0x3f;

	if (sc != mgr->sink_count) {
		mgr->sink_count = sc;
		*handled = true;
	}

	if (esi[1] & DP_DOWN_REP_MSG_RDY) {
		ret = FUNC0(mgr);
		*handled = true;
	}

	if (esi[1] & DP_UP_REQ_MSG_RDY) {
		ret |= FUNC1(mgr);
		*handled = true;
	}

	FUNC2(mgr);
	return ret;
}