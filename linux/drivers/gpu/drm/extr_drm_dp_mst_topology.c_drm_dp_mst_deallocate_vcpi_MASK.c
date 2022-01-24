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
struct TYPE_2__ {scalar_t__ vcpi; scalar_t__ aligned_pbn; scalar_t__ pbn; scalar_t__ num_slots; } ;
struct drm_dp_mst_port {TYPE_1__ vcpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_dp_mst_topology_mgr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_mst_port*) ; 

void FUNC2(struct drm_dp_mst_topology_mgr *mgr,
				struct drm_dp_mst_port *port)
{
	if (!port->vcpi.vcpi)
		return;

	FUNC0(mgr, port->vcpi.vcpi);
	port->vcpi.num_slots = 0;
	port->vcpi.pbn = 0;
	port->vcpi.aligned_pbn = 0;
	port->vcpi.vcpi = 0;
	FUNC1(port);
}