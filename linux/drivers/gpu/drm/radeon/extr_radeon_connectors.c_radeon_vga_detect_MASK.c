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
struct TYPE_4__ {scalar_t__ bios_hardcoded_edid_size; } ;
struct radeon_device {TYPE_2__ mode_info; int /*<<< orphan*/  is_atom_bios; } ;
struct radeon_connector {int detected_by_load; int use_digital; scalar_t__ dac_load_detect; scalar_t__ shared_ddc; TYPE_1__* edid; scalar_t__ ddc_bus; } ;
struct drm_encoder_helper_funcs {int (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_device {int /*<<< orphan*/  dev; struct radeon_device* dev_private; } ;
struct drm_connector {int status; struct drm_device* dev; int /*<<< orphan*/  name; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_3__ {int input; } ;

/* Variables and functions */
 int DRM_EDID_INPUT_DIGITAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct drm_encoder* FUNC5 (struct drm_connector*) ; 
 int FUNC6 (struct drm_connector*,struct drm_encoder*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_connector*,int) ; 
 int FUNC10 (struct radeon_connector*,int) ; 
 int FUNC11 (struct drm_encoder*,struct drm_connector*) ; 
 struct radeon_connector* FUNC12 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC13(struct drm_connector *connector, bool force)
{
	struct drm_device *dev = connector->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_connector *radeon_connector = FUNC12(connector);
	struct drm_encoder *encoder;
	const struct drm_encoder_helper_funcs *encoder_funcs;
	bool dret = false;
	enum drm_connector_status ret = connector_status_disconnected;
	int r;

	if (!FUNC1()) {
		r = FUNC2(connector->dev->dev);
		if (r < 0)
			return connector_status_disconnected;
	}

	encoder = FUNC5(connector);
	if (!encoder)
		ret = connector_status_disconnected;

	if (radeon_connector->ddc_bus)
		dret = FUNC10(radeon_connector, false);
	if (dret) {
		radeon_connector->detected_by_load = false;
		FUNC7(connector);
		FUNC8(connector);

		if (!radeon_connector->edid) {
			FUNC0("%s: probed a monitor but no|invalid EDID\n",
					connector->name);
			ret = connector_status_connected;
		} else {
			radeon_connector->use_digital =
				!!(radeon_connector->edid->input & DRM_EDID_INPUT_DIGITAL);

			/* some oems have boards with separate digital and analog connectors
			 * with a shared ddc line (often vga + hdmi)
			 */
			if (radeon_connector->use_digital && radeon_connector->shared_ddc) {
				FUNC7(connector);
				ret = connector_status_disconnected;
			} else {
				ret = connector_status_connected;
			}
		}
	} else {

		/* if we aren't forcing don't do destructive polling */
		if (!force) {
			/* only return the previous status if we last
			 * detected a monitor via load.
			 */
			if (radeon_connector->detected_by_load)
				ret = connector->status;
			goto out;
		}

		if (radeon_connector->dac_load_detect && encoder) {
			encoder_funcs = encoder->helper_private;
			ret = encoder_funcs->detect(encoder, connector);
			if (ret != connector_status_disconnected)
				radeon_connector->detected_by_load = true;
		}
	}

	if (ret == connector_status_connected)
		ret = FUNC6(connector, encoder, ret, true);

	/* RN50 and some RV100 asics in servers often have a hardcoded EDID in the
	 * vbios to deal with KVMs. If we have one and are not able to detect a monitor
	 * by other means, assume the CRT is connected and use that EDID.
	 */
	if ((!rdev->is_atom_bios) &&
	    (ret == connector_status_disconnected) &&
	    rdev->mode_info.bios_hardcoded_edid_size) {
		ret = connector_status_connected;
	}

	FUNC9(connector, ret);

out:
	if (!FUNC1()) {
		FUNC3(connector->dev->dev);
		FUNC4(connector->dev->dev);
	}

	return ret;
}