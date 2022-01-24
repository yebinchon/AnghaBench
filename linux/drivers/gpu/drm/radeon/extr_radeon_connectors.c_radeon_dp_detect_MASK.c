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
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct radeon_encoder {struct drm_display_mode native_mode; } ;
struct radeon_device {int flags; } ;
struct radeon_connector_atom_dig {scalar_t__ dp_sink_type; int /*<<< orphan*/  edp_on; scalar_t__ is_mst; } ;
struct TYPE_2__ {int /*<<< orphan*/  hpd; } ;
struct radeon_connector {TYPE_1__ hpd; scalar_t__ dac_load_detect; struct radeon_connector_atom_dig* con_priv; } ;
struct drm_encoder_helper_funcs {int (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_device {int /*<<< orphan*/  dev; struct radeon_device* dev_private; } ;
struct drm_connector {int status; scalar_t__ connector_type; struct drm_device* dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_OFF ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_ON ; 
 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ; 
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 scalar_t__ ENCODER_OBJECT_ID_NONE ; 
 int RADEON_IS_PX ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*) ; 
 scalar_t__ radeon_audio ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,struct drm_encoder*,int) ; 
 struct drm_encoder* FUNC7 (struct drm_connector*) ; 
 scalar_t__ FUNC8 (struct drm_connector*) ; 
 scalar_t__ FUNC9 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_connector*,int) ; 
 scalar_t__ FUNC13 (struct radeon_connector*,int) ; 
 scalar_t__ FUNC14 (struct radeon_connector*) ; 
 scalar_t__ FUNC15 (struct radeon_connector*) ; 
 int FUNC16 (struct radeon_connector*) ; 
 scalar_t__ FUNC17 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ radeon_runtime_pm ; 
 int FUNC18 (struct drm_encoder*,struct drm_connector*) ; 
 struct radeon_connector* FUNC19 (struct drm_connector*) ; 
 struct radeon_encoder* FUNC20 (struct drm_encoder*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC21(struct drm_connector *connector, bool force)
{
	struct drm_device *dev = connector->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_connector *radeon_connector = FUNC19(connector);
	enum drm_connector_status ret = connector_status_disconnected;
	struct radeon_connector_atom_dig *radeon_dig_connector = radeon_connector->con_priv;
	struct drm_encoder *encoder = FUNC7(connector);
	int r;

	if (radeon_dig_connector->is_mst)
		return connector_status_disconnected;

	if (!FUNC1()) {
		r = FUNC2(connector->dev->dev);
		if (r < 0)
			return connector_status_disconnected;
	}

	if (!force && FUNC8(connector)) {
		ret = connector->status;
		goto out;
	}

	FUNC10(connector);

	if ((connector->connector_type == DRM_MODE_CONNECTOR_eDP) ||
	    (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)) {
		if (encoder) {
			struct radeon_encoder *radeon_encoder = FUNC20(encoder);
			struct drm_display_mode *native_mode = &radeon_encoder->native_mode;

			/* check if panel is valid */
			if (native_mode->hdisplay >= 320 && native_mode->vdisplay >= 240)
				ret = connector_status_connected;
			/* don't fetch the edid from the vbios if ddc fails and runpm is
			 * enabled so we report disconnected.
			 */
			if ((rdev->flags & RADEON_IS_PX) && (radeon_runtime_pm != 0))
				ret = connector_status_disconnected;
		}
		/* eDP is always DP */
		radeon_dig_connector->dp_sink_type = CONNECTOR_OBJECT_ID_DISPLAYPORT;
		if (!radeon_dig_connector->edp_on)
			FUNC0(connector,
						     ATOM_TRANSMITTER_ACTION_POWER_ON);
		if (FUNC14(radeon_connector))
			ret = connector_status_connected;
		if (!radeon_dig_connector->edp_on)
			FUNC0(connector,
						     ATOM_TRANSMITTER_ACTION_POWER_OFF);
	} else if (FUNC9(connector) !=
		   ENCODER_OBJECT_ID_NONE) {
		/* DP bridges are always DP */
		radeon_dig_connector->dp_sink_type = CONNECTOR_OBJECT_ID_DISPLAYPORT;
		/* get the DPCD from the bridge */
		FUNC14(radeon_connector);

		if (encoder) {
			/* setup ddc on the bridge */
			FUNC5(encoder);
			/* bridge chips are always aux */
			if (FUNC13(radeon_connector, true)) /* try DDC */
				ret = connector_status_connected;
			else if (radeon_connector->dac_load_detect) { /* try load detection */
				const struct drm_encoder_helper_funcs *encoder_funcs = encoder->helper_private;
				ret = encoder_funcs->detect(encoder, connector);
			}
		}
	} else {
		radeon_dig_connector->dp_sink_type = FUNC15(radeon_connector);
		if (FUNC17(rdev, radeon_connector->hpd.hpd)) {
			ret = connector_status_connected;
			if (radeon_dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) {
				FUNC14(radeon_connector);
				r = FUNC16(radeon_connector);
				if (r == 1)
					ret = connector_status_disconnected;
			}
		} else {
			if (radeon_dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) {
				if (FUNC14(radeon_connector)) {
					r = FUNC16(radeon_connector);
					if (r == 1)
						ret = connector_status_disconnected;
					else
						ret = connector_status_connected;
				}
			} else {
				/* try non-aux ddc (DP to DVI/HDMI/etc. adapter) */
				if (FUNC13(radeon_connector, false))
					ret = connector_status_connected;
			}
		}
	}

	FUNC12(connector, ret);

	if ((radeon_audio != 0) && encoder) {
		FUNC11(connector);
		FUNC6(connector, encoder, ret);
	}

out:
	if (!FUNC1()) {
		FUNC3(connector->dev->dev);
		FUNC4(connector->dev->dev);
	}

	return ret;
}