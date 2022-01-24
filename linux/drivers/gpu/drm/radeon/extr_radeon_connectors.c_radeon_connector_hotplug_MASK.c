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
struct radeon_device {int dummy; } ;
struct radeon_connector_atom_dig {scalar_t__ dp_sink_type; scalar_t__ is_mst; } ;
struct TYPE_2__ {scalar_t__ hpd; } ;
struct radeon_connector {TYPE_1__ hpd; struct radeon_connector_atom_dig* con_priv; scalar_t__ is_mst_connector; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {scalar_t__ connector_type; scalar_t__ dpms; struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ; 
 scalar_t__ DRM_MODE_CONNECTOR_DisplayPort ; 
 scalar_t__ DRM_MODE_DPMS_OFF ; 
 scalar_t__ DRM_MODE_DPMS_ON ; 
 scalar_t__ RADEON_HPD_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_connector*) ; 
 scalar_t__ FUNC2 (struct radeon_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 scalar_t__ FUNC4 (struct radeon_connector*) ; 
 scalar_t__ FUNC5 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,scalar_t__) ; 
 struct radeon_connector* FUNC7 (struct drm_connector*) ; 

void FUNC8(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_connector *radeon_connector = FUNC7(connector);

	if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort) {
		struct radeon_connector_atom_dig *dig_connector =
			radeon_connector->con_priv;

		if (radeon_connector->is_mst_connector)
			return;
		if (dig_connector->is_mst) {
			FUNC3(connector);
			return;
		}
	}
	/* bail if the connector does not have hpd pin, e.g.,
	 * VGA, TV, etc.
	 */
	if (radeon_connector->hpd.hpd == RADEON_HPD_NONE)
		return;

	FUNC6(rdev, radeon_connector->hpd.hpd);

	/* if the connector is already off, don't turn it back on */
	/* FIXME: This access isn't protected by any locks. */
	if (connector->dpms != DRM_MODE_DPMS_ON)
		return;

	/* just deal with DP (not eDP) here. */
	if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort) {
		struct radeon_connector_atom_dig *dig_connector =
			radeon_connector->con_priv;

		/* if existing sink type was not DP no need to retrain */
		if (dig_connector->dp_sink_type != CONNECTOR_OBJECT_ID_DISPLAYPORT)
			return;

		/* first get sink type as it may be reset after (un)plug */
		dig_connector->dp_sink_type = FUNC2(radeon_connector);
		/* don't do anything if sink is not display port, i.e.,
		 * passive dp->(dvi|hdmi) adaptor
		 */
		if (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT &&
		    FUNC5(rdev, radeon_connector->hpd.hpd) &&
		    FUNC4(radeon_connector)) {
			/* Don't start link training before we have the DPCD */
			if (!FUNC1(radeon_connector))
				return;

			/* Turn the connector off and back on immediately, which
			 * will trigger link training
			 */
			FUNC0(connector, DRM_MODE_DPMS_OFF);
			FUNC0(connector, DRM_MODE_DPMS_ON);
		}
	}
}