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
struct drm_connector {int interlace_allowed; int /*<<< orphan*/  polled; } ;
struct dw_hdmi {int /*<<< orphan*/  cec_notifier_mutex; struct cec_notifier* cec_notifier; int /*<<< orphan*/  dev; int /*<<< orphan*/  ddc; struct drm_connector connector; } ;
struct drm_encoder {int dummy; } ;
struct drm_bridge {int /*<<< orphan*/  dev; struct drm_encoder* encoder; struct dw_hdmi* driver_private; } ;
struct cec_notifier {int dummy; } ;
struct cec_connector_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_HDMIA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cec_connector_info*,struct drm_connector*) ; 
 struct cec_notifier* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct cec_connector_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dw_hdmi_connector_funcs ; 
 int /*<<< orphan*/  dw_hdmi_connector_helper_funcs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct drm_bridge *bridge)
{
	struct dw_hdmi *hdmi = bridge->driver_private;
	struct drm_encoder *encoder = bridge->encoder;
	struct drm_connector *connector = &hdmi->connector;
	struct cec_connector_info conn_info;
	struct cec_notifier *notifier;

	connector->interlace_allowed = 1;
	connector->polled = DRM_CONNECTOR_POLL_HPD;

	FUNC3(connector, &dw_hdmi_connector_helper_funcs);

	FUNC4(bridge->dev, connector,
				    &dw_hdmi_connector_funcs,
				    DRM_MODE_CONNECTOR_HDMIA,
				    hdmi->ddc);

	FUNC2(connector, encoder);

	FUNC0(&conn_info, connector);

	notifier = FUNC1(hdmi->dev, NULL, &conn_info);
	if (!notifier)
		return -ENOMEM;

	FUNC5(&hdmi->cec_notifier_mutex);
	hdmi->cec_notifier = notifier;
	FUNC6(&hdmi->cec_notifier_mutex);

	return 0;
}