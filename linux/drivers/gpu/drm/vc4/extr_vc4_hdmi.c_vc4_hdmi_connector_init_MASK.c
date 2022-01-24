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
struct drm_connector {int polled; int interlace_allowed; scalar_t__ doublescan_allowed; } ;
struct vc4_hdmi_connector {struct drm_encoder* encoder; struct drm_connector base; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_CONNECTOR_POLL_CONNECT ; 
 int DRM_CONNECTOR_POLL_DISCONNECT ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_HDMIA ; 
 int ENOMEM ; 
 struct drm_connector* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct vc4_hdmi_connector* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  vc4_hdmi_connector_funcs ; 
 int /*<<< orphan*/  vc4_hdmi_connector_helper_funcs ; 

__attribute__((used)) static struct drm_connector *FUNC7(struct drm_device *dev,
						     struct drm_encoder *encoder)
{
	struct drm_connector *connector;
	struct vc4_hdmi_connector *hdmi_connector;
	int ret;

	hdmi_connector = FUNC1(dev->dev, sizeof(*hdmi_connector),
				      GFP_KERNEL);
	if (!hdmi_connector)
		return FUNC0(-ENOMEM);
	connector = &hdmi_connector->base;

	hdmi_connector->encoder = encoder;

	FUNC5(dev, connector, &vc4_hdmi_connector_funcs,
			   DRM_MODE_CONNECTOR_HDMIA);
	FUNC4(connector, &vc4_hdmi_connector_helper_funcs);

	/* Create and attach TV margin props to this connector. */
	ret = FUNC6(dev);
	if (ret)
		return FUNC0(ret);

	FUNC3(connector);

	connector->polled = (DRM_CONNECTOR_POLL_CONNECT |
			     DRM_CONNECTOR_POLL_DISCONNECT);

	connector->interlace_allowed = 1;
	connector->doublescan_allowed = 0;

	FUNC2(connector, encoder);

	return connector;
}