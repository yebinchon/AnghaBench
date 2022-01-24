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
struct nouveau_drm {int dummy; } ;
struct TYPE_2__ {int full; scalar_t__ mode; } ;
struct nouveau_conn_atom {TYPE_1__ scaler; } ;
struct drm_encoder {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct drm_display_mode {int type; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct drm_crtc_state {int mode_changed; struct drm_display_mode mode; struct drm_display_mode adjusted_mode; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {int connector_type; } ;

/* Variables and functions */
#define  DRM_MODE_CONNECTOR_LVDS 129 
#define  DRM_MODE_CONNECTOR_eDP 128 
 scalar_t__ DRM_MODE_SCALE_NONE ; 
 int DRM_MODE_TYPE_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*,struct drm_display_mode*) ; 
 struct nouveau_conn_atom* FUNC3 (struct drm_connector_state*) ; 
 struct nouveau_drm* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct drm_encoder *encoder,
			    struct drm_crtc_state *crtc_state,
			    struct drm_connector_state *conn_state,
			    struct drm_display_mode *native_mode)
{
	struct drm_display_mode *adjusted_mode = &crtc_state->adjusted_mode;
	struct drm_display_mode *mode = &crtc_state->mode;
	struct drm_connector *connector = conn_state->connector;
	struct nouveau_conn_atom *asyc = FUNC3(conn_state);
	struct nouveau_drm *drm = FUNC4(encoder->dev);

	FUNC0(drm, "%s atomic_check\n", encoder->name);
	asyc->scaler.full = false;
	if (!native_mode)
		return 0;

	if (asyc->scaler.mode == DRM_MODE_SCALE_NONE) {
		switch (connector->connector_type) {
		case DRM_MODE_CONNECTOR_LVDS:
		case DRM_MODE_CONNECTOR_eDP:
			/* Don't force scaler for EDID modes with
			 * same size as the native one (e.g. different
			 * refresh rate)
			 */
			if (adjusted_mode->hdisplay == native_mode->hdisplay &&
			    adjusted_mode->vdisplay == native_mode->vdisplay &&
			    adjusted_mode->type & DRM_MODE_TYPE_DRIVER)
				break;
			mode = native_mode;
			asyc->scaler.full = true;
			break;
		default:
			break;
		}
	} else {
		mode = native_mode;
	}

	if (!FUNC2(adjusted_mode, mode)) {
		FUNC1(adjusted_mode, mode);
		crtc_state->mode_changed = true;
	}

	return 0;
}