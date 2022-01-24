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
struct edid {int dummy; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ddc; } ;
struct drm_dp_mst_port {int /*<<< orphan*/  has_audio; TYPE_1__ aux; scalar_t__ cached_edid; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edid*) ; 
 struct drm_dp_mst_port* FUNC1 (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_dp_mst_port*) ; 
 struct edid* FUNC3 (scalar_t__) ; 
 struct edid* FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 

struct edid *FUNC5(struct drm_connector *connector, struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port)
{
	struct edid *edid = NULL;

	/* we need to search for the port in the mgr in case it's gone */
	port = FUNC1(mgr, port);
	if (!port)
		return NULL;

	if (port->cached_edid)
		edid = FUNC3(port->cached_edid);
	else {
		edid = FUNC4(connector, &port->aux.ddc);
	}
	port->has_audio = FUNC0(edid);
	FUNC2(port);
	return edid;
}