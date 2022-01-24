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
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  lock; int /*<<< orphan*/  mst_primary; } ;
struct drm_dp_mst_port {int port_num; struct drm_dp_mst_branch* parent; } ;
struct drm_dp_mst_branch {int dummy; } ;

/* Variables and functions */
 struct drm_dp_mst_port* FUNC0 (struct drm_dp_mst_branch*) ; 
 scalar_t__ FUNC1 (struct drm_dp_mst_branch*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct drm_dp_mst_branch *
FUNC4(struct drm_dp_mst_topology_mgr *mgr,
					struct drm_dp_mst_branch *mstb,
					int *port_num)
{
	struct drm_dp_mst_branch *rmstb = NULL;
	struct drm_dp_mst_port *found_port;

	FUNC2(&mgr->lock);
	if (!mgr->mst_primary)
		goto out;

	do {
		found_port = FUNC0(mstb);
		if (!found_port)
			break;

		if (FUNC1(found_port->parent)) {
			rmstb = found_port->parent;
			*port_num = found_port->port_num;
		} else {
			/* Search again, starting from this parent */
			mstb = found_port->parent;
		}
	} while (!rmstb);
out:
	FUNC3(&mgr->lock);
	return rmstb;
}