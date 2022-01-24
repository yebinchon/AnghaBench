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
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_dp_mst_port {int has_audio; } ;

/* Variables and functions */
 struct drm_dp_mst_port* FUNC0 (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_mst_port*) ; 

bool FUNC2(struct drm_dp_mst_topology_mgr *mgr,
					struct drm_dp_mst_port *port)
{
	bool ret = false;

	port = FUNC0(mgr, port);
	if (!port)
		return ret;
	ret = port->has_audio;
	FUNC1(port);
	return ret;
}