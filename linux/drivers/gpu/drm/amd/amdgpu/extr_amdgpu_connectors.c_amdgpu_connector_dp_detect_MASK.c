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
struct drm_encoder_helper_funcs {int (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_device {int /*<<< orphan*/  dev; struct amdgpu_device* dev_private; } ;
struct drm_connector {int status; scalar_t__ connector_type; struct drm_device* dev; } ;
struct amdgpu_encoder {struct drm_display_mode native_mode; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_connector_atom_dig {scalar_t__ dp_sink_type; int /*<<< orphan*/  edp_on; } ;
struct TYPE_2__ {int /*<<< orphan*/  hpd; } ;
struct amdgpu_connector {TYPE_1__ hpd; scalar_t__ dac_load_detect; struct amdgpu_connector_atom_dig* con_priv; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_OFF ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_ON ; 
 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ; 
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 scalar_t__ ENCODER_OBJECT_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_connector*) ; 
 scalar_t__ FUNC1 (struct amdgpu_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*) ; 
 struct drm_encoder* FUNC4 (struct drm_connector*) ; 
 scalar_t__ FUNC5 (struct drm_connector*) ; 
 scalar_t__ FUNC6 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_connector*,int) ; 
 scalar_t__ FUNC9 (struct amdgpu_connector*,int) ; 
 scalar_t__ FUNC10 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct drm_encoder*,struct drm_connector*) ; 
 struct amdgpu_connector* FUNC16 (struct drm_connector*) ; 
 struct amdgpu_encoder* FUNC17 (struct drm_encoder*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC18(struct drm_connector *connector, bool force)
{
	struct drm_device *dev = connector->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_connector *amdgpu_connector = FUNC16(connector);
	enum drm_connector_status ret = connector_status_disconnected;
	struct amdgpu_connector_atom_dig *amdgpu_dig_connector = amdgpu_connector->con_priv;
	struct drm_encoder *encoder = FUNC4(connector);
	int r;

	if (!FUNC11()) {
		r = FUNC12(connector->dev->dev);
		if (r < 0)
			return connector_status_disconnected;
	}

	if (!force && FUNC5(connector)) {
		ret = connector->status;
		goto out;
	}

	FUNC7(connector);

	if ((connector->connector_type == DRM_MODE_CONNECTOR_eDP) ||
	    (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)) {
		if (encoder) {
			struct amdgpu_encoder *amdgpu_encoder = FUNC17(encoder);
			struct drm_display_mode *native_mode = &amdgpu_encoder->native_mode;

			/* check if panel is valid */
			if (native_mode->hdisplay >= 320 && native_mode->vdisplay >= 240)
				ret = connector_status_connected;
		}
		/* eDP is always DP */
		amdgpu_dig_connector->dp_sink_type = CONNECTOR_OBJECT_ID_DISPLAYPORT;
		if (!amdgpu_dig_connector->edp_on)
			FUNC2(connector,
							     ATOM_TRANSMITTER_ACTION_POWER_ON);
		if (!FUNC0(amdgpu_connector))
			ret = connector_status_connected;
		if (!amdgpu_dig_connector->edp_on)
			FUNC2(connector,
							     ATOM_TRANSMITTER_ACTION_POWER_OFF);
	} else if (FUNC6(connector) !=
		   ENCODER_OBJECT_ID_NONE) {
		/* DP bridges are always DP */
		amdgpu_dig_connector->dp_sink_type = CONNECTOR_OBJECT_ID_DISPLAYPORT;
		/* get the DPCD from the bridge */
		FUNC0(amdgpu_connector);

		if (encoder) {
			/* setup ddc on the bridge */
			FUNC3(encoder);
			/* bridge chips are always aux */
			/* try DDC */
			if (FUNC9(amdgpu_connector, true))
				ret = connector_status_connected;
			else if (amdgpu_connector->dac_load_detect) { /* try load detection */
				const struct drm_encoder_helper_funcs *encoder_funcs = encoder->helper_private;
				ret = encoder_funcs->detect(encoder, connector);
			}
		}
	} else {
		amdgpu_dig_connector->dp_sink_type =
			FUNC1(amdgpu_connector);
		if (FUNC10(adev, amdgpu_connector->hpd.hpd)) {
			ret = connector_status_connected;
			if (amdgpu_dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT)
				FUNC0(amdgpu_connector);
		} else {
			if (amdgpu_dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) {
				if (!FUNC0(amdgpu_connector))
					ret = connector_status_connected;
			} else {
				/* try non-aux ddc (DP to DVI/HDMI/etc. adapter) */
				if (FUNC9(amdgpu_connector,
							     false))
					ret = connector_status_connected;
			}
		}
	}

	FUNC8(connector, ret);
out:
	if (!FUNC11()) {
		FUNC13(connector->dev->dev);
		FUNC14(connector->dev->dev);
	}

	return ret;
}