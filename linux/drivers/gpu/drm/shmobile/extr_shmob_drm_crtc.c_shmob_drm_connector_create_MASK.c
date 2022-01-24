#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct drm_connector {int /*<<< orphan*/  base; TYPE_1__ display_info; } ;
struct TYPE_12__ {struct drm_encoder* encoder; struct drm_connector connector; } ;
struct shmob_drm_device {TYPE_5__ connector; TYPE_7__* ddev; TYPE_3__* pdata; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  dpms_property; } ;
struct TYPE_13__ {TYPE_4__ mode_config; } ;
struct TYPE_9__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct TYPE_10__ {TYPE_2__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  connector_funcs ; 
 int /*<<< orphan*/  connector_helper_funcs ; 
 int FUNC0 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_7__*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int FUNC7 (TYPE_5__*) ; 

int FUNC8(struct shmob_drm_device *sdev,
			       struct drm_encoder *encoder)
{
	struct drm_connector *connector = &sdev->connector.connector;
	int ret;

	sdev->connector.encoder = encoder;

	connector->display_info.width_mm = sdev->pdata->panel.width_mm;
	connector->display_info.height_mm = sdev->pdata->panel.height_mm;

	ret = FUNC3(sdev->ddev, connector, &connector_funcs,
				 DRM_MODE_CONNECTOR_LVDS);
	if (ret < 0)
		return ret;

	FUNC2(connector, &connector_helper_funcs);

	ret = FUNC7(&sdev->connector);
	if (ret < 0)
		goto err_cleanup;

	ret = FUNC0(connector, encoder);
	if (ret < 0)
		goto err_backlight;

	FUNC4(connector, DRM_MODE_DPMS_OFF);
	FUNC5(&connector->base,
		sdev->ddev->mode_config.dpms_property, DRM_MODE_DPMS_OFF);

	return 0;

err_backlight:
	FUNC6(&sdev->connector);
err_cleanup:
	FUNC1(connector);
	return ret;
}