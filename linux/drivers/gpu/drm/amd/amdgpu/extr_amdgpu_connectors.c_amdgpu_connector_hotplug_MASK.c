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
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {scalar_t__ dpms; scalar_t__ connector_type; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_connector_atom_dig {scalar_t__ dp_sink_type; } ;
struct TYPE_2__ {scalar_t__ hpd; } ;
struct amdgpu_connector {TYPE_1__ hpd; struct amdgpu_connector_atom_dig* con_priv; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_HPD_NONE ; 
 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ; 
 scalar_t__ DRM_MODE_CONNECTOR_DisplayPort ; 
 scalar_t__ DRM_MODE_DPMS_OFF ; 
 scalar_t__ DRM_MODE_DPMS_ON ; 
 scalar_t__ FUNC0 (struct amdgpu_connector*) ; 
 scalar_t__ FUNC1 (struct amdgpu_connector*) ; 
 scalar_t__ FUNC2 (struct amdgpu_connector*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,scalar_t__) ; 
 struct amdgpu_connector* FUNC6 (struct drm_connector*) ; 

void FUNC7(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_connector *amdgpu_connector = FUNC6(connector);

	/* bail if the connector does not have hpd pin, e.g.,
	 * VGA, TV, etc.
	 */
	if (amdgpu_connector->hpd.hpd == AMDGPU_HPD_NONE)
		return;

	FUNC4(adev, amdgpu_connector->hpd.hpd);

	/* if the connector is already off, don't turn it back on */
	if (connector->dpms != DRM_MODE_DPMS_ON)
		return;

	/* just deal with DP (not eDP) here. */
	if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort) {
		struct amdgpu_connector_atom_dig *dig_connector =
			amdgpu_connector->con_priv;

		/* if existing sink type was not DP no need to retrain */
		if (dig_connector->dp_sink_type != CONNECTOR_OBJECT_ID_DISPLAYPORT)
			return;

		/* first get sink type as it may be reset after (un)plug */
		dig_connector->dp_sink_type = FUNC1(amdgpu_connector);
		/* don't do anything if sink is not display port, i.e.,
		 * passive dp->(dvi|hdmi) adaptor
		 */
		if (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT &&
		    FUNC3(adev, amdgpu_connector->hpd.hpd) &&
		    FUNC2(amdgpu_connector)) {
			/* Don't start link training before we have the DPCD */
			if (FUNC0(amdgpu_connector))
				return;

			/* Turn the connector off and back on immediately, which
			 * will trigger link training
			 */
			FUNC5(connector, DRM_MODE_DPMS_OFF);
			FUNC5(connector, DRM_MODE_DPMS_ON);
		}
	}
}