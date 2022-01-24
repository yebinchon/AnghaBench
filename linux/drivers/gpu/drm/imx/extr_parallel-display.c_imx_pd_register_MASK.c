#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dpms; } ;
struct drm_encoder {int dummy; } ;
struct imx_parallel_display {TYPE_1__ connector; TYPE_5__* dev; int /*<<< orphan*/  bridge; scalar_t__ panel; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DPI ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,int) ; 
 int FUNC1 (struct drm_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_1__*) ; 
 int FUNC8 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_pd_connector_funcs ; 
 int /*<<< orphan*/  imx_pd_connector_helper_funcs ; 
 int /*<<< orphan*/  imx_pd_encoder_funcs ; 
 int /*<<< orphan*/  imx_pd_encoder_helper_funcs ; 

__attribute__((used)) static int FUNC9(struct drm_device *drm,
	struct imx_parallel_display *imxpd)
{
	struct drm_encoder *encoder = &imxpd->encoder;
	int ret;

	ret = FUNC8(drm, encoder, imxpd->dev->of_node);
	if (ret)
		return ret;

	/* set the connector's dpms to OFF so that
	 * drm_helper_connector_dpms() won't return
	 * immediately since the current state is ON
	 * at this point.
	 */
	imxpd->connector.dpms = DRM_MODE_DPMS_OFF;

	FUNC5(encoder, &imx_pd_encoder_helper_funcs);
	FUNC6(drm, encoder, &imx_pd_encoder_funcs,
			 DRM_MODE_ENCODER_NONE, NULL);

	if (!imxpd->bridge) {
		FUNC3(&imxpd->connector,
				&imx_pd_connector_helper_funcs);
		FUNC4(drm, &imxpd->connector,
				   &imx_pd_connector_funcs,
				   DRM_MODE_CONNECTOR_DPI);
	}

	if (imxpd->panel)
		FUNC7(imxpd->panel, &imxpd->connector);

	if (imxpd->bridge) {
		ret = FUNC1(encoder, imxpd->bridge, NULL);
		if (ret < 0) {
			FUNC0(imxpd->dev, "failed to attach bridge: %d\n",
				ret);
			return ret;
		}
	} else {
		FUNC2(&imxpd->connector, encoder);
	}

	return 0;
}