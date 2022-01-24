#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ polled; int /*<<< orphan*/  dpms; } ;
struct mxsfb_drm_private {struct drm_panel* panel; TYPE_2__ connector; } ;
struct drm_panel {int dummy; } ;
struct drm_device {TYPE_1__* dev; struct mxsfb_drm_private* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_Unknown ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct drm_device*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_panel**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mxsfb_panel_connector_funcs ; 
 int /*<<< orphan*/  mxsfb_panel_connector_helper_funcs ; 

int FUNC3(struct drm_device *drm)
{
	struct mxsfb_drm_private *mxsfb = drm->dev_private;
	struct drm_panel *panel;
	int ret;

	ret = FUNC2(drm->dev->of_node, 0, 0, &panel, NULL);
	if (ret)
		return ret;

	mxsfb->connector.dpms = DRM_MODE_DPMS_OFF;
	mxsfb->connector.polled = 0;
	FUNC0(&mxsfb->connector,
			&mxsfb_panel_connector_helper_funcs);
	ret = FUNC1(drm, &mxsfb->connector,
				 &mxsfb_panel_connector_funcs,
				 DRM_MODE_CONNECTOR_Unknown);
	if (!ret)
		mxsfb->panel = panel;

	return ret;
}