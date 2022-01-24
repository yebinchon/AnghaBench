#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_2__ {int num_slots; } ;
struct drm_dp_mst_port {TYPE_1__ vcpi; } ;

/* Variables and functions */
 struct drm_dp_mst_port* FUNC0 (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_mst_port*) ; 

int FUNC2(struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port)
{
	int slots = 0;
	port = FUNC0(mgr, port);
	if (!port)
		return slots;

	slots = port->vcpi.num_slots;
	FUNC1(port);
	return slots;
}