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
struct intel_dp {int /*<<< orphan*/  mst_mgr; } ;
struct intel_connector {int /*<<< orphan*/  port; struct intel_dp* mst_port; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_connector*) ; 
 struct edid* FUNC1 (struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 
 struct intel_connector* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *connector)
{
	struct intel_connector *intel_connector = FUNC4(connector);
	struct intel_dp *intel_dp = intel_connector->mst_port;
	struct edid *edid;
	int ret;

	if (FUNC0(connector))
		return FUNC2(connector, NULL);

	edid = FUNC1(connector, &intel_dp->mst_mgr, intel_connector->port);
	ret = FUNC2(connector, edid);
	FUNC3(edid);

	return ret;
}