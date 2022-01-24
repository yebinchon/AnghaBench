#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tilcdc_drm_private {int /*<<< orphan*/  external_connector; TYPE_1__* external_encoder; int /*<<< orphan*/  crtc; } ;
struct drm_device {int /*<<< orphan*/  dev; struct tilcdc_drm_private* dev_private; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  possible_crtcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (TYPE_1__*,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  panel_info_default ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,TYPE_1__*) ; 

__attribute__((used)) static
int FUNC5(struct drm_device *ddev, struct drm_bridge *bridge)
{
	struct tilcdc_drm_private *priv = ddev->dev_private;
	int ret;

	priv->external_encoder->possible_crtcs = FUNC0(0);

	ret = FUNC2(priv->external_encoder, bridge, NULL);
	if (ret) {
		FUNC1(ddev->dev, "drm_bridge_attach() failed %d\n", ret);
		return ret;
	}

	FUNC3(priv->crtc, &panel_info_default);

	priv->external_connector =
		FUNC4(ddev, priv->external_encoder);
	if (!priv->external_connector)
		return -ENODEV;

	return 0;
}