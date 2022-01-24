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
typedef  int /*<<< orphan*/  uint8_t ;
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  lock; int /*<<< orphan*/  mst_primary; } ;
struct drm_dp_mst_branch {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_dp_mst_branch*) ; 
 struct drm_dp_mst_branch* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct drm_dp_mst_branch *
FUNC4(struct drm_dp_mst_topology_mgr *mgr,
				     uint8_t *guid)
{
	struct drm_dp_mst_branch *mstb;
	int ret;

	/* find the port by iterating down */
	FUNC2(&mgr->lock);

	mstb = FUNC1(mgr->mst_primary, guid);
	if (mstb) {
		ret = FUNC0(mstb);
		if (!ret)
			mstb = NULL;
	}

	FUNC3(&mgr->lock);
	return mstb;
}