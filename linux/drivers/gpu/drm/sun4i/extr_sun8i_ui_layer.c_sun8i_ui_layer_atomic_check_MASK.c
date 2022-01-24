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
struct sun8i_ui_layer {int /*<<< orphan*/  channel; TYPE_2__* mixer; } ;
struct drm_plane_state {int /*<<< orphan*/  state; struct drm_crtc* crtc; } ;
struct drm_plane {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {int scaler_mask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DRM_PLANE_HELPER_NO_SCALING ; 
 int EINVAL ; 
 int SUN8I_UI_SCALER_SCALE_MAX ; 
 int SUN8I_UI_SCALER_SCALE_MIN ; 
 scalar_t__ FUNC1 (int) ; 
 struct drm_crtc_state* FUNC2 (int /*<<< orphan*/ ,struct drm_crtc*) ; 
 int FUNC3 (struct drm_plane_state*,struct drm_crtc_state*,int,int,int,int) ; 
 struct sun8i_ui_layer* FUNC4 (struct drm_plane*) ; 

__attribute__((used)) static int FUNC5(struct drm_plane *plane,
				       struct drm_plane_state *state)
{
	struct sun8i_ui_layer *layer = FUNC4(plane);
	struct drm_crtc *crtc = state->crtc;
	struct drm_crtc_state *crtc_state;
	int min_scale, max_scale;

	if (!crtc)
		return 0;

	crtc_state = FUNC2(state->state, crtc);
	if (FUNC1(!crtc_state))
		return -EINVAL;

	min_scale = DRM_PLANE_HELPER_NO_SCALING;
	max_scale = DRM_PLANE_HELPER_NO_SCALING;

	if (layer->mixer->cfg->scaler_mask & FUNC0(layer->channel)) {
		min_scale = SUN8I_UI_SCALER_SCALE_MIN;
		max_scale = SUN8I_UI_SCALER_SCALE_MAX;
	}

	return FUNC3(state, crtc_state,
						   min_scale, max_scale,
						   true, true);
}