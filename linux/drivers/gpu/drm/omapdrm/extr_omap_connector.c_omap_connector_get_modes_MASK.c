#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_dss_device {TYPE_1__* ops; } ;
struct omap_connector {TYPE_2__* output; } ;
struct drm_connector {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ panel; } ;
struct TYPE_3__ {int (* get_modes ) (struct omap_dss_device*,struct drm_connector*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMAP_DSS_DEVICE_OP_EDID ; 
 int /*<<< orphan*/  OMAP_DSS_DEVICE_OP_MODES ; 
 int FUNC1 (scalar_t__) ; 
 struct omap_dss_device* FUNC2 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_connector*,struct omap_dss_device*) ; 
 int FUNC4 (struct omap_dss_device*,struct drm_connector*) ; 
 struct omap_connector* FUNC5 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector)
{
	struct omap_connector *omap_connector = FUNC5(connector);
	struct omap_dss_device *dssdev;

	FUNC0("%s", connector->name);

	/*
	 * If display exposes EDID, then we parse that in the normal way to
	 * build table of supported modes.
	 */
	dssdev = FUNC2(connector,
					    OMAP_DSS_DEVICE_OP_EDID);
	if (dssdev)
		return FUNC3(connector, dssdev);

	/*
	 * Otherwise if the display pipeline reports modes (e.g. with a fixed
	 * resolution panel or an analog TV output), query it.
	 */
	dssdev = FUNC2(connector,
					    OMAP_DSS_DEVICE_OP_MODES);
	if (dssdev)
		return dssdev->ops->get_modes(dssdev, connector);

	/*
	 * Otherwise if the display pipeline uses a drm_panel, we delegate the
	 * operation to the panel API.
	 */
	if (omap_connector->output->panel)
		return FUNC1(omap_connector->output->panel);

	/*
	 * We can't retrieve modes, which can happen for instance for a DVI or
	 * VGA output with the DDC bus unconnected. The KMS core will add the
	 * default modes.
	 */
	return 0;
}