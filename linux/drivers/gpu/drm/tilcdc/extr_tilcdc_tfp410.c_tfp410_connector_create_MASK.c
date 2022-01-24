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
struct tfp410_module {int dummy; } ;
struct drm_connector {int polled; scalar_t__ doublescan_allowed; scalar_t__ interlace_allowed; } ;
struct tfp410_connector {struct drm_connector base; struct tfp410_module* mod; struct drm_encoder* encoder; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_CONNECTOR_POLL_CONNECT ; 
 int DRM_CONNECTOR_POLL_DISCONNECT ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DVID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct tfp410_connector* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  tfp410_connector_funcs ; 
 int /*<<< orphan*/  tfp410_connector_helper_funcs ; 

__attribute__((used)) static struct drm_connector *FUNC5(struct drm_device *dev,
		struct tfp410_module *mod, struct drm_encoder *encoder)
{
	struct tfp410_connector *tfp410_connector;
	struct drm_connector *connector;
	int ret;

	tfp410_connector = FUNC0(dev->dev, sizeof(*tfp410_connector),
					GFP_KERNEL);
	if (!tfp410_connector)
		return NULL;

	tfp410_connector->encoder = encoder;
	tfp410_connector->mod = mod;

	connector = &tfp410_connector->base;

	FUNC3(dev, connector, &tfp410_connector_funcs,
			DRM_MODE_CONNECTOR_DVID);
	FUNC2(connector, &tfp410_connector_helper_funcs);

	connector->polled = DRM_CONNECTOR_POLL_CONNECT |
			DRM_CONNECTOR_POLL_DISCONNECT;

	connector->interlace_allowed = 0;
	connector->doublescan_allowed = 0;

	ret = FUNC1(connector, encoder);
	if (ret)
		goto fail;

	return connector;

fail:
	FUNC4(connector);
	return NULL;
}