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
struct radeon_connector {int /*<<< orphan*/  base; struct edid* edid; int /*<<< orphan*/  port; int /*<<< orphan*/  mst_mgr; struct radeon_connector* mst_port; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct edid*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct edid*) ; 
 struct edid* FUNC3 (struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct radeon_connector* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *connector)
{
	struct radeon_connector *radeon_connector = FUNC4(connector);
	struct radeon_connector *master = radeon_connector->mst_port;
	struct edid *edid;
	int ret = 0;

	edid = FUNC3(connector, &master->mst_mgr, radeon_connector->port);
	radeon_connector->edid = edid;
	FUNC0("edid retrieved %p\n", edid);
	if (radeon_connector->edid) {
		FUNC2(&radeon_connector->base, radeon_connector->edid);
		ret = FUNC1(&radeon_connector->base, radeon_connector->edid);
		return ret;
	}
	FUNC2(&radeon_connector->base, NULL);

	return ret;
}