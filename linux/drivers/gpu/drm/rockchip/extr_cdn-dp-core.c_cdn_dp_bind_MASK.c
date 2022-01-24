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
struct drm_encoder {int /*<<< orphan*/  possible_crtcs; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dpms; int /*<<< orphan*/  polled; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct cdn_dp_port {TYPE_1__ event_nb; int /*<<< orphan*/  extcon; } ;
struct cdn_dp_device {int connected; int active; int active_port; int fw_loaded; int ports; int /*<<< orphan*/  event_work; int /*<<< orphan*/  dev; struct cdn_dp_port** port; struct drm_connector connector; struct drm_encoder encoder; struct drm_device* drm_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DisplayPort ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  EXTCON_DISP_DP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdn_dp_atomic_connector_funcs ; 
 int /*<<< orphan*/  cdn_dp_connector_helper_funcs ; 
 int /*<<< orphan*/  cdn_dp_encoder_funcs ; 
 int /*<<< orphan*/  cdn_dp_encoder_helper_funcs ; 
 int FUNC4 (struct cdn_dp_device*) ; 
 int /*<<< orphan*/  cdn_dp_pd_event ; 
 int /*<<< orphan*/  cdn_dp_pd_event_work ; 
 struct cdn_dp_device* FUNC5 (struct device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct device *dev, struct device *master, void *data)
{
	struct cdn_dp_device *dp = FUNC5(dev);
	struct drm_encoder *encoder;
	struct drm_connector *connector;
	struct cdn_dp_port *port;
	struct drm_device *drm_dev = data;
	int ret, i;

	ret = FUNC4(dp);
	if (ret < 0)
		return ret;

	dp->drm_dev = drm_dev;
	dp->connected = false;
	dp->active = false;
	dp->active_port = -1;
	dp->fw_loaded = false;

	FUNC3(&dp->event_work, cdn_dp_pd_event_work);

	encoder = &dp->encoder;

	encoder->possible_crtcs = FUNC14(drm_dev,
							     dev->of_node);
	FUNC0("possible_crtcs = 0x%x\n", encoder->possible_crtcs);

	ret = FUNC13(drm_dev, encoder, &cdn_dp_encoder_funcs,
			       DRM_MODE_ENCODER_TMDS, NULL);
	if (ret) {
		FUNC2("failed to initialize encoder with drm\n");
		return ret;
	}

	FUNC12(encoder, &cdn_dp_encoder_helper_funcs);

	connector = &dp->connector;
	connector->polled = DRM_CONNECTOR_POLL_HPD;
	connector->dpms = DRM_MODE_DPMS_OFF;

	ret = FUNC10(drm_dev, connector,
				 &cdn_dp_atomic_connector_funcs,
				 DRM_MODE_CONNECTOR_DisplayPort);
	if (ret) {
		FUNC2("failed to initialize connector with drm\n");
		goto err_free_encoder;
	}

	FUNC9(connector, &cdn_dp_connector_helper_funcs);

	ret = FUNC7(connector, encoder);
	if (ret) {
		FUNC2("failed to attach connector and encoder\n");
		goto err_free_connector;
	}

	for (i = 0; i < dp->ports; i++) {
		port = dp->port[i];

		port->event_nb.notifier_call = cdn_dp_pd_event;
		ret = FUNC6(dp->dev, port->extcon,
						    EXTCON_DISP_DP,
						    &port->event_nb);
		if (ret) {
			FUNC1(dev,
				      "register EXTCON_DISP_DP notifier err\n");
			goto err_free_connector;
		}
	}

	FUNC15(dev);

	FUNC16(&dp->event_work);

	return 0;

err_free_connector:
	FUNC8(connector);
err_free_encoder:
	FUNC11(encoder);
	return ret;
}