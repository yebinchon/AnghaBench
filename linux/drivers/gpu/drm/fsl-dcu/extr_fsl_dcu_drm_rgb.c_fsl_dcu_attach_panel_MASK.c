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
struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct drm_encoder* encoder; struct drm_connector base; } ;
struct drm_encoder {int dummy; } ;
struct fsl_dcu_drm_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  drm; TYPE_1__ connector; struct drm_encoder encoder; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 int /*<<< orphan*/  connector_helper_funcs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*) ; 
 int FUNC7 (struct drm_panel*,struct drm_connector*) ; 
 int /*<<< orphan*/  fsl_dcu_drm_connector_funcs ; 

__attribute__((used)) static int FUNC8(struct fsl_dcu_drm_device *fsl_dev,
				 struct drm_panel *panel)
{
	struct drm_encoder *encoder = &fsl_dev->encoder;
	struct drm_connector *connector = &fsl_dev->connector.base;
	int ret;

	fsl_dev->connector.encoder = encoder;

	ret = FUNC4(fsl_dev->drm, connector,
				 &fsl_dcu_drm_connector_funcs,
				 DRM_MODE_CONNECTOR_LVDS);
	if (ret < 0)
		return ret;

	FUNC3(connector, &connector_helper_funcs);
	ret = FUNC5(connector);
	if (ret < 0)
		goto err_cleanup;

	ret = FUNC1(connector, encoder);
	if (ret < 0)
		goto err_sysfs;

	ret = FUNC7(panel, connector);
	if (ret) {
		FUNC0(fsl_dev->dev, "failed to attach panel\n");
		goto err_sysfs;
	}

	return 0;

err_sysfs:
	FUNC6(connector);
err_cleanup:
	FUNC2(connector);
	return ret;
}