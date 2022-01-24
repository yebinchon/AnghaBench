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
struct msm_edp {int /*<<< orphan*/  ctrl; } ;
struct edp_connector {struct msm_edp* edp; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct edid*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct drm_connector*,struct edid**) ; 
 struct edp_connector* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *connector)
{
	struct edp_connector *edp_connector = FUNC4(connector);
	struct msm_edp *edp = edp_connector->edp;

	struct edid *drm_edid = NULL;
	int ret = 0;

	FUNC0("");
	ret = FUNC3(edp->ctrl, connector, &drm_edid);
	if (ret)
		return ret;

	FUNC2(connector, drm_edid);
	if (drm_edid)
		ret = FUNC1(connector, drm_edid);

	return ret;
}