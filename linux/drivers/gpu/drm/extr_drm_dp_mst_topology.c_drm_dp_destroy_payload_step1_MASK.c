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
struct drm_dp_payload {int /*<<< orphan*/  payload_state; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_dp_mst_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_PAYLOAD_DELETE_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_mst_topology_mgr*,int,struct drm_dp_payload*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_dp_mst_topology_mgr *mgr,
					struct drm_dp_mst_port *port,
					int id,
					struct drm_dp_payload *payload)
{
	FUNC0("\n");
	/* it's okay for these to fail */
	if (port) {
		FUNC2(mgr, port, id, 0);
	}

	FUNC1(mgr, id, payload);
	payload->payload_state = DP_PAYLOAD_DELETE_LOCAL;
	return 0;
}