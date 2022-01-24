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
struct sti_hdmi_connector {struct drm_encoder* encoder; struct sti_hdmi* hdmi; } ;
struct TYPE_2__ {int /*<<< orphan*/  cea; } ;
struct sti_hdmi {struct drm_connector* drm_connector; TYPE_1__ audio; int /*<<< orphan*/  ddc_adapt; struct drm_device* drm_dev; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  polled; } ;
struct drm_bridge {int /*<<< orphan*/ * funcs; struct sti_hdmi* driver_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_HDMIA ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDMI_DEFAULT_INT ; 
 int /*<<< orphan*/  HDMI_INT_EN ; 
 struct sti_hdmi* FUNC1 (struct device*) ; 
 void* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sti_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sti_hdmi_bridge_funcs ; 
 int /*<<< orphan*/  sti_hdmi_connector_funcs ; 
 int /*<<< orphan*/  sti_hdmi_connector_helper_funcs ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,struct drm_connector*) ; 
 struct drm_encoder* FUNC10 (struct drm_device*) ; 
 int FUNC11 (struct device*,struct sti_hdmi*) ; 

__attribute__((used)) static int FUNC12(struct device *dev, struct device *master, void *data)
{
	struct sti_hdmi *hdmi = FUNC1(dev);
	struct drm_device *drm_dev = data;
	struct drm_encoder *encoder;
	struct sti_hdmi_connector *connector;
	struct drm_connector *drm_connector;
	struct drm_bridge *bridge;
	int err;

	/* Set the drm device handle */
	hdmi->drm_dev = drm_dev;

	encoder = FUNC10(drm_dev);
	if (!encoder)
		return -EINVAL;

	connector = FUNC2(dev, sizeof(*connector), GFP_KERNEL);
	if (!connector)
		return -EINVAL;

	connector->hdmi = hdmi;

	bridge = FUNC2(dev, sizeof(*bridge), GFP_KERNEL);
	if (!bridge)
		return -EINVAL;

	bridge->driver_private = hdmi;
	bridge->funcs = &sti_hdmi_bridge_funcs;
	FUNC3(encoder, bridge, NULL);

	connector->encoder = encoder;

	drm_connector = (struct drm_connector *)connector;

	drm_connector->polled = DRM_CONNECTOR_POLL_HPD;

	FUNC6(drm_dev, drm_connector,
				    &sti_hdmi_connector_funcs,
				    DRM_MODE_CONNECTOR_HDMIA,
				    hdmi->ddc_adapt);
	FUNC5(drm_connector,
			&sti_hdmi_connector_helper_funcs);

	/* initialise property */
	FUNC9(drm_dev, drm_connector);

	hdmi->drm_connector = drm_connector;

	err = FUNC4(drm_connector, encoder);
	if (err) {
		FUNC0("Failed to attach a connector to a encoder\n");
		goto err_sysfs;
	}

	err = FUNC11(dev, hdmi);
	if (err) {
		FUNC0("Failed to attach an audio codec\n");
		goto err_sysfs;
	}

	/* Initialize audio infoframe */
	err = FUNC7(&hdmi->audio.cea);
	if (err) {
		FUNC0("Failed to init audio infoframe\n");
		goto err_sysfs;
	}

	/* Enable default interrupts */
	FUNC8(hdmi, HDMI_DEFAULT_INT, HDMI_INT_EN);

	return 0;

err_sysfs:
	hdmi->drm_connector = NULL;
	return -EINVAL;
}