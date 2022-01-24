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
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  pbn_div; } ;
struct TYPE_2__ {scalar_t__ vcpi; int pbn; int num_slots; } ;
struct drm_dp_mst_port {TYPE_1__ vcpi; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 int FUNC2 (struct drm_dp_mst_topology_mgr*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_dp_mst_port*) ; 
 struct drm_dp_mst_port* FUNC4 (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_dp_mst_port*) ; 

bool FUNC6(struct drm_dp_mst_topology_mgr *mgr,
			      struct drm_dp_mst_port *port, int pbn, int slots)
{
	int ret;

	port = FUNC4(mgr, port);
	if (!port)
		return false;

	if (slots < 0)
		return false;

	if (port->vcpi.vcpi > 0) {
		FUNC1("payload: vcpi %d already allocated for pbn %d - requested pbn %d\n",
			      port->vcpi.vcpi, port->vcpi.pbn, pbn);
		if (pbn == port->vcpi.pbn) {
			FUNC5(port);
			return true;
		}
	}

	ret = FUNC2(mgr, &port->vcpi, pbn, slots);
	if (ret) {
		FUNC1("failed to init vcpi slots=%d max=63 ret=%d\n",
			      FUNC0(pbn, mgr->pbn_div), ret);
		goto out;
	}
	FUNC1("initing vcpi for pbn=%d slots=%d\n",
		      pbn, port->vcpi.num_slots);

	/* Keep port allocated until its payload has been removed */
	FUNC3(port);
	FUNC5(port);
	return true;
out:
	return false;
}