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
typedef  int uint32_t ;
typedef  void* u16 ;
struct drm_property_blob {int color_mgmt_changed; int /*<<< orphan*/  gamma_lut; int /*<<< orphan*/  ctm; int /*<<< orphan*/  degamma_lut; struct drm_color_lut* data; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc_state {int color_mgmt_changed; int /*<<< orphan*/  gamma_lut; int /*<<< orphan*/  ctm; int /*<<< orphan*/  degamma_lut; struct drm_color_lut* data; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_color_lut {void* blue; void* green; void* red; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct drm_property_blob*) ; 
 int FUNC1 (struct drm_property_blob*) ; 
 int FUNC2 (struct drm_atomic_state*) ; 
 struct drm_property_blob* FUNC3 (struct drm_atomic_state*,struct drm_crtc*) ; 
 struct drm_atomic_state* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_property_blob*) ; 
 struct drm_property_blob* FUNC7 (struct drm_device*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct drm_property_blob*) ; 

int FUNC9(struct drm_crtc *crtc,
				       u16 *red, u16 *green, u16 *blue,
				       uint32_t size,
				       struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_device *dev = crtc->dev;
	struct drm_atomic_state *state;
	struct drm_crtc_state *crtc_state;
	struct drm_property_blob *blob = NULL;
	struct drm_color_lut *blob_data;
	int i, ret = 0;
	bool replaced;

	state = FUNC4(crtc->dev);
	if (!state)
		return -ENOMEM;

	blob = FUNC7(dev,
					sizeof(struct drm_color_lut) * size,
					NULL);
	if (FUNC0(blob)) {
		ret = FUNC1(blob);
		blob = NULL;
		goto fail;
	}

	/* Prepare GAMMA_LUT with the legacy values. */
	blob_data = blob->data;
	for (i = 0; i < size; i++) {
		blob_data[i].red = red[i];
		blob_data[i].green = green[i];
		blob_data[i].blue = blue[i];
	}

	state->acquire_ctx = ctx;
	crtc_state = FUNC3(state, crtc);
	if (FUNC0(crtc_state)) {
		ret = FUNC1(crtc_state);
		goto fail;
	}

	/* Reset DEGAMMA_LUT and CTM properties. */
	replaced  = FUNC8(&crtc_state->degamma_lut, NULL);
	replaced |= FUNC8(&crtc_state->ctm, NULL);
	replaced |= FUNC8(&crtc_state->gamma_lut, blob);
	crtc_state->color_mgmt_changed |= replaced;

	ret = FUNC2(state);

fail:
	FUNC5(state);
	FUNC6(blob);
	return ret;
}