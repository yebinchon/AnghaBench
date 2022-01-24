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
struct nv50_mstc {int /*<<< orphan*/  connector; } ;
struct nouveau_drm {TYPE_1__* fbcon; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  helper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC3 (int /*<<< orphan*/ ) ; 
 struct nv50_mstc* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static void
FUNC5(struct drm_dp_mst_topology_mgr *mgr,
			    struct drm_connector *connector)
{
	struct nouveau_drm *drm = FUNC3(connector->dev);
	struct nv50_mstc *mstc = FUNC4(connector);

	FUNC1(&mstc->connector);

	FUNC2(&drm->fbcon->helper, &mstc->connector);

	FUNC0(&mstc->connector);
}