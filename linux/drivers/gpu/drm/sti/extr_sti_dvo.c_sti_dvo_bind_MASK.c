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
struct sti_dvo_connector {struct drm_encoder* encoder; struct sti_dvo* dvo; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct sti_dvo {struct drm_encoder* encoder; struct drm_bridge* bridge; TYPE_1__ dev; struct drm_device* drm_dev; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  polled; } ;
struct drm_bridge {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; struct sti_dvo* driver_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sti_dvo* FUNC1 (struct device*) ; 
 void* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_bridge*) ; 
 int FUNC4 (struct drm_encoder*,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_bridge*) ; 
 int FUNC6 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sti_dvo_bridge_funcs ; 
 int /*<<< orphan*/  sti_dvo_connector_funcs ; 
 int /*<<< orphan*/  sti_dvo_connector_helper_funcs ; 
 struct drm_encoder* FUNC9 (struct drm_device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct device *master, void *data)
{
	struct sti_dvo *dvo = FUNC1(dev);
	struct drm_device *drm_dev = data;
	struct drm_encoder *encoder;
	struct sti_dvo_connector *connector;
	struct drm_connector *drm_connector;
	struct drm_bridge *bridge;
	int err;

	/* Set the drm device handle */
	dvo->drm_dev = drm_dev;

	encoder = FUNC9(drm_dev);
	if (!encoder)
		return -ENOMEM;

	connector = FUNC2(dev, sizeof(*connector), GFP_KERNEL);
	if (!connector)
		return -ENOMEM;

	connector->dvo = dvo;

	bridge = FUNC2(dev, sizeof(*bridge), GFP_KERNEL);
	if (!bridge)
		return -ENOMEM;

	bridge->driver_private = dvo;
	bridge->funcs = &sti_dvo_bridge_funcs;
	bridge->of_node = dvo->dev.of_node;
	FUNC3(bridge);

	err = FUNC4(encoder, bridge, NULL);
	if (err) {
		FUNC0("Failed to attach bridge\n");
		return err;
	}

	dvo->bridge = bridge;
	connector->encoder = encoder;
	dvo->encoder = encoder;

	drm_connector = (struct drm_connector *)connector;

	drm_connector->polled = DRM_CONNECTOR_POLL_HPD;

	FUNC8(drm_dev, drm_connector,
			   &sti_dvo_connector_funcs, DRM_MODE_CONNECTOR_LVDS);
	FUNC7(drm_connector,
				 &sti_dvo_connector_helper_funcs);

	err = FUNC6(drm_connector, encoder);
	if (err) {
		FUNC0("Failed to attach a connector to a encoder\n");
		goto err_sysfs;
	}

	return 0;

err_sysfs:
	FUNC5(bridge);
	return -EINVAL;
}