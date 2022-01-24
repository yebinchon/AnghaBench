#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  polled; } ;
struct drm_encoder {scalar_t__ possible_crtcs; } ;
struct rk3066_hdmi {TYPE_1__ connector; struct device* dev; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_HDMIA ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rk3066_hdmi_connector_funcs ; 
 int /*<<< orphan*/  rk3066_hdmi_connector_helper_funcs ; 
 int /*<<< orphan*/  rk3066_hdmi_encoder_funcs ; 
 int /*<<< orphan*/  rk3066_hdmi_encoder_helper_funcs ; 

__attribute__((used)) static int
FUNC6(struct drm_device *drm, struct rk3066_hdmi *hdmi)
{
	struct drm_encoder *encoder = &hdmi->encoder;
	struct device *dev = hdmi->dev;

	encoder->possible_crtcs =
		FUNC5(drm, dev->of_node);

	/*
	 * If we failed to find the CRTC(s) which this encoder is
	 * supposed to be connected to, it's because the CRTC has
	 * not been registered yet.  Defer probing, and hope that
	 * the required CRTC is added later.
	 */
	if (encoder->possible_crtcs == 0)
		return -EPROBE_DEFER;

	FUNC3(encoder, &rk3066_hdmi_encoder_helper_funcs);
	FUNC4(drm, encoder, &rk3066_hdmi_encoder_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);

	hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;

	FUNC1(&hdmi->connector,
				 &rk3066_hdmi_connector_helper_funcs);
	FUNC2(drm, &hdmi->connector,
			   &rk3066_hdmi_connector_funcs,
			   DRM_MODE_CONNECTOR_HDMIA);

	FUNC0(&hdmi->connector, encoder);

	return 0;
}