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
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct drm_connector {scalar_t__ connector_type; TYPE_1__ display_info; } ;
struct amdgpu_connector_atom_dig {int /*<<< orphan*/  edp_on; } ;
struct amdgpu_connector {struct amdgpu_connector_atom_dig* con_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_OFF ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_ON ; 
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 scalar_t__ ENCODER_OBJECT_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,struct drm_connector*) ; 
 struct drm_encoder* FUNC3 (struct drm_connector*) ; 
 int FUNC4 (struct drm_connector*) ; 
 scalar_t__ FUNC5 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*) ; 
 struct drm_display_mode* FUNC8 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_connector*,struct drm_display_mode*) ; 
 struct amdgpu_connector* FUNC11 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC12(struct drm_connector *connector)
{
	struct amdgpu_connector *amdgpu_connector = FUNC11(connector);
	struct amdgpu_connector_atom_dig *amdgpu_dig_connector = amdgpu_connector->con_priv;
	struct drm_encoder *encoder = FUNC3(connector);
	int ret;

	if ((connector->connector_type == DRM_MODE_CONNECTOR_eDP) ||
	    (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)) {
		struct drm_display_mode *mode;

		if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
			if (!amdgpu_dig_connector->edp_on)
				FUNC0(connector,
								     ATOM_TRANSMITTER_ACTION_POWER_ON);
			FUNC7(connector);
			ret = FUNC4(connector);
			if (!amdgpu_dig_connector->edp_on)
				FUNC0(connector,
								     ATOM_TRANSMITTER_ACTION_POWER_OFF);
		} else {
			/* need to setup ddc on the bridge */
			if (FUNC5(connector) !=
			    ENCODER_OBJECT_ID_NONE) {
				if (encoder)
					FUNC1(encoder);
			}
			FUNC7(connector);
			ret = FUNC4(connector);
		}

		if (ret > 0) {
			if (encoder) {
				FUNC6(encoder, connector);
				/* add scaled modes */
				FUNC2(encoder, connector);
			}
			return ret;
		}

		if (!encoder)
			return 0;

		/* we have no EDID modes */
		mode = FUNC8(encoder);
		if (mode) {
			ret = 1;
			FUNC10(connector, mode);
			/* add the width/height from vbios tables if available */
			connector->display_info.width_mm = mode->width_mm;
			connector->display_info.height_mm = mode->height_mm;
			/* add scaled modes */
			FUNC2(encoder, connector);
		}
	} else {
		/* need to setup ddc on the bridge */
		if (FUNC5(connector) !=
			ENCODER_OBJECT_ID_NONE) {
			if (encoder)
				FUNC1(encoder);
		}
		FUNC7(connector);
		ret = FUNC4(connector);

		FUNC9(connector);
	}

	return ret;
}