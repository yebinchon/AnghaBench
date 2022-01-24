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
struct sti_hda_connector {struct drm_encoder* encoder; struct sti_hda* hda; } ;
struct sti_hda {struct drm_device* drm_dev; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  polled; } ;
struct drm_bridge {int /*<<< orphan*/ * funcs; struct sti_hda* driver_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_Component ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sti_hda* FUNC1 (struct device*) ; 
 void* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sti_hda*,int) ; 
 int /*<<< orphan*/  sti_hda_bridge_funcs ; 
 int /*<<< orphan*/  sti_hda_connector_funcs ; 
 int /*<<< orphan*/  sti_hda_connector_helper_funcs ; 
 struct drm_encoder* FUNC8 (struct drm_device*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct device *master, void *data)
{
	struct sti_hda *hda = FUNC1(dev);
	struct drm_device *drm_dev = data;
	struct drm_encoder *encoder;
	struct sti_hda_connector *connector;
	struct drm_connector *drm_connector;
	struct drm_bridge *bridge;
	int err;

	/* Set the drm device handle */
	hda->drm_dev = drm_dev;

	encoder = FUNC8(drm_dev);
	if (!encoder)
		return -ENOMEM;

	connector = FUNC2(dev, sizeof(*connector), GFP_KERNEL);
	if (!connector)
		return -ENOMEM;

	connector->hda = hda;

		bridge = FUNC2(dev, sizeof(*bridge), GFP_KERNEL);
	if (!bridge)
		return -ENOMEM;

	bridge->driver_private = hda;
	bridge->funcs = &sti_hda_bridge_funcs;
	FUNC3(encoder, bridge, NULL);

	connector->encoder = encoder;

	drm_connector = (struct drm_connector *)connector;

	drm_connector->polled = DRM_CONNECTOR_POLL_HPD;

	FUNC6(drm_dev, drm_connector,
			&sti_hda_connector_funcs, DRM_MODE_CONNECTOR_Component);
	FUNC5(drm_connector,
			&sti_hda_connector_helper_funcs);

	err = FUNC4(drm_connector, encoder);
	if (err) {
		FUNC0("Failed to attach a connector to a encoder\n");
		goto err_sysfs;
	}

	/* force to disable hd dacs at startup */
	FUNC7(hda, false);

	return 0;

err_sysfs:
	return -EINVAL;
}