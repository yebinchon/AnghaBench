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
struct drm_encoder {int dummy; } ;
struct drm_connector {scalar_t__ connector_type; } ;
struct amdgpu_encoder_atom_dig {int /*<<< orphan*/  backlight_level; int /*<<< orphan*/  panel_mode; } ;
struct amdgpu_encoder {int devices; struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_connector_atom_dig {int edp_on; } ;
struct amdgpu_connector {struct amdgpu_connector_atom_dig* con_priv; } ;

/* Variables and functions */
 int ATOM_DEVICE_LCD_SUPPORT ; 
 int ATOM_DISABLE ; 
 int ATOM_ENABLE ; 
 int /*<<< orphan*/  ATOM_ENCODER_CMD_DP_VIDEO_OFF ; 
 int /*<<< orphan*/  ATOM_ENCODER_CMD_DP_VIDEO_ON ; 
 int /*<<< orphan*/  ATOM_ENCODER_CMD_SETUP ; 
 int /*<<< orphan*/  ATOM_ENCODER_CMD_SETUP_PANEL_MODE ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_DISABLE ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_ENABLE ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_LCD_BLOFF ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_OFF ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_ON ; 
 int /*<<< orphan*/  DP_PANEL_MODE_EXTERNAL_DP_MODE ; 
 int /*<<< orphan*/  DP_SET_POWER_D3 ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*,struct drm_encoder*,int) ; 
 struct drm_connector* FUNC10 (struct drm_encoder*) ; 
 struct drm_encoder* FUNC11 (struct drm_encoder*) ; 
 struct amdgpu_connector* FUNC12 (struct drm_connector*) ; 
 struct amdgpu_encoder* FUNC13 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC14(struct drm_encoder *encoder, int action)
{
	struct amdgpu_encoder *amdgpu_encoder = FUNC13(encoder);
	struct drm_encoder *ext_encoder = FUNC11(encoder);
	struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
	struct drm_connector *connector = FUNC10(encoder);
	struct amdgpu_connector *amdgpu_connector = NULL;
	struct amdgpu_connector_atom_dig *amdgpu_dig_connector = NULL;

	if (connector) {
		amdgpu_connector = FUNC12(connector);
		amdgpu_dig_connector = amdgpu_connector->con_priv;
	}

	if (action == ATOM_ENABLE) {
		if (!connector)
			dig->panel_mode = DP_PANEL_MODE_EXTERNAL_DP_MODE;
		else
			dig->panel_mode = FUNC1(encoder, connector);

		/* setup and enable the encoder */
		FUNC7(encoder, ATOM_ENCODER_CMD_SETUP, 0);
		FUNC7(encoder,
						   ATOM_ENCODER_CMD_SETUP_PANEL_MODE,
						   dig->panel_mode);
		if (ext_encoder)
			FUNC9(encoder, ext_encoder,
								EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP);
		if (FUNC0(FUNC4(encoder)) &&
		    connector) {
			if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
				FUNC6(connector,
								     ATOM_TRANSMITTER_ACTION_POWER_ON);
				amdgpu_dig_connector->edp_on = true;
			}
		}
		/* enable the transmitter */
		FUNC8(encoder,
						       ATOM_TRANSMITTER_ACTION_ENABLE,
						       0, 0);
		if (FUNC0(FUNC4(encoder)) &&
		    connector) {
			/* DP_SET_POWER_D0 is set in amdgpu_atombios_dp_link_train */
			FUNC2(encoder, connector);
			FUNC7(encoder, ATOM_ENCODER_CMD_DP_VIDEO_ON, 0);
		}
		if (amdgpu_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT))
			FUNC5(amdgpu_encoder, dig->backlight_level);
		if (ext_encoder)
			FUNC9(encoder, ext_encoder, ATOM_ENABLE);
	} else {
		if (FUNC0(FUNC4(encoder)) &&
		    connector)
			FUNC7(encoder,
							   ATOM_ENCODER_CMD_DP_VIDEO_OFF, 0);
		if (ext_encoder)
			FUNC9(encoder, ext_encoder, ATOM_DISABLE);
		if (amdgpu_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT))
			FUNC8(encoder,
							       ATOM_TRANSMITTER_ACTION_LCD_BLOFF, 0, 0);

		if (FUNC0(FUNC4(encoder)) &&
		    connector)
			FUNC3(connector, DP_SET_POWER_D3);
		/* disable the transmitter */
		FUNC8(encoder,
						       ATOM_TRANSMITTER_ACTION_DISABLE, 0, 0);
		if (FUNC0(FUNC4(encoder)) &&
		    connector) {
			if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
				FUNC6(connector,
								     ATOM_TRANSMITTER_ACTION_POWER_OFF);
				amdgpu_dig_connector->edp_on = false;
			}
		}
	}
}