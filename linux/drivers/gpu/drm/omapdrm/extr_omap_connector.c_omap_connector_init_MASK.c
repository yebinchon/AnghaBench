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
struct omap_dss_device {int /*<<< orphan*/  name; } ;
struct drm_connector {int interlace_allowed; int polled; scalar_t__ doublescan_allowed; } ;
struct omap_connector {void* hpd; struct drm_connector base; void* output; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int DRM_CONNECTOR_POLL_CONNECT ; 
 int DRM_CONNECTOR_POLL_DISCONNECT ; 
 int DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OMAP_DSS_DEVICE_OP_DETECT ; 
 int /*<<< orphan*/  OMAP_DSS_DEVICE_OP_HPD ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct omap_connector* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 struct omap_dss_device* FUNC5 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap_connector_funcs ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  omap_connector_helper_funcs ; 
 void* FUNC7 (struct omap_dss_device*) ; 

struct drm_connector *FUNC8(struct drm_device *dev,
					  struct omap_dss_device *output,
					  struct drm_encoder *encoder)
{
	struct drm_connector *connector = NULL;
	struct omap_connector *omap_connector;
	struct omap_dss_device *dssdev;

	FUNC0("%s", output->name);

	omap_connector = FUNC3(sizeof(*omap_connector), GFP_KERNEL);
	if (!omap_connector)
		goto fail;

	omap_connector->output = FUNC7(output);

	connector = &omap_connector->base;
	connector->interlace_allowed = 1;
	connector->doublescan_allowed = 0;

	FUNC2(dev, connector, &omap_connector_funcs,
			   FUNC6(output));
	FUNC1(connector, &omap_connector_helper_funcs);

	/*
	 * Initialize connector status handling. First try to find a device that
	 * supports hot-plug reporting. If it fails, fall back to a device that
	 * support polling. If that fails too, we don't support hot-plug
	 * detection at all.
	 */
	dssdev = FUNC5(connector, OMAP_DSS_DEVICE_OP_HPD);
	if (dssdev) {
		omap_connector->hpd = FUNC7(dssdev);
		connector->polled = DRM_CONNECTOR_POLL_HPD;
	} else {
		dssdev = FUNC5(connector,
						    OMAP_DSS_DEVICE_OP_DETECT);
		if (dssdev)
			connector->polled = DRM_CONNECTOR_POLL_CONNECT |
					    DRM_CONNECTOR_POLL_DISCONNECT;
	}

	return connector;

fail:
	if (connector)
		FUNC4(connector);

	return NULL;
}