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
struct drm_encoder_helper_funcs {int (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_connector {int status; TYPE_2__* dev; int /*<<< orphan*/  name; } ;
struct amdgpu_connector {int detected_by_load; int use_digital; scalar_t__ dac_load_detect; scalar_t__ shared_ddc; TYPE_1__* edid; scalar_t__ ddc_bus; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int input; } ;

/* Variables and functions */
 int DRM_EDID_INPUT_DIGITAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct drm_encoder* FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,int) ; 
 int FUNC5 (struct amdgpu_connector*,int) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct drm_encoder*,struct drm_connector*) ; 
 struct amdgpu_connector* FUNC11 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC12(struct drm_connector *connector, bool force)
{
	struct amdgpu_connector *amdgpu_connector = FUNC11(connector);
	struct drm_encoder *encoder;
	const struct drm_encoder_helper_funcs *encoder_funcs;
	bool dret = false;
	enum drm_connector_status ret = connector_status_disconnected;
	int r;

	if (!FUNC6()) {
		r = FUNC7(connector->dev->dev);
		if (r < 0)
			return connector_status_disconnected;
	}

	encoder = FUNC1(connector);
	if (!encoder)
		ret = connector_status_disconnected;

	if (amdgpu_connector->ddc_bus)
		dret = FUNC5(amdgpu_connector, false);
	if (dret) {
		amdgpu_connector->detected_by_load = false;
		FUNC2(connector);
		FUNC3(connector);

		if (!amdgpu_connector->edid) {
			FUNC0("%s: probed a monitor but no|invalid EDID\n",
					connector->name);
			ret = connector_status_connected;
		} else {
			amdgpu_connector->use_digital =
				!!(amdgpu_connector->edid->input & DRM_EDID_INPUT_DIGITAL);

			/* some oems have boards with separate digital and analog connectors
			 * with a shared ddc line (often vga + hdmi)
			 */
			if (amdgpu_connector->use_digital && amdgpu_connector->shared_ddc) {
				FUNC2(connector);
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
			if (amdgpu_connector->detected_by_load)
				ret = connector->status;
			goto out;
		}

		if (amdgpu_connector->dac_load_detect && encoder) {
			encoder_funcs = encoder->helper_private;
			ret = encoder_funcs->detect(encoder, connector);
			if (ret != connector_status_disconnected)
				amdgpu_connector->detected_by_load = true;
		}
	}

	FUNC4(connector, ret);

out:
	if (!FUNC6()) {
		FUNC8(connector->dev->dev);
		FUNC9(connector->dev->dev);
	}

	return ret;
}