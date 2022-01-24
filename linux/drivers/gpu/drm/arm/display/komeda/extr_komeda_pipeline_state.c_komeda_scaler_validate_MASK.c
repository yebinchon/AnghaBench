#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct komeda_scaler_state {int en_alpha; int /*<<< orphan*/  base; int /*<<< orphan*/  right_part; int /*<<< orphan*/  en_split; scalar_t__ en_img_enhancement; scalar_t__ en_scaling; int /*<<< orphan*/  total_hsize_out; int /*<<< orphan*/  total_hsize_in; int /*<<< orphan*/  total_vsize_in; int /*<<< orphan*/  left_crop; int /*<<< orphan*/  right_crop; int /*<<< orphan*/  vsize_out; int /*<<< orphan*/  hsize_out; int /*<<< orphan*/  vsize_in; int /*<<< orphan*/  hsize_in; } ;
struct komeda_scaler {int /*<<< orphan*/  base; } ;
struct TYPE_5__ {int /*<<< orphan*/  component; } ;
struct komeda_data_flow_cfg {scalar_t__ pixel_blend_mode; TYPE_2__ input; int /*<<< orphan*/  right_part; int /*<<< orphan*/  en_split; scalar_t__ en_img_enhancement; scalar_t__ en_scaling; int /*<<< orphan*/  total_out_w; int /*<<< orphan*/  total_in_w; int /*<<< orphan*/  total_in_h; int /*<<< orphan*/  left_crop; int /*<<< orphan*/  right_crop; int /*<<< orphan*/  out_h; int /*<<< orphan*/  out_w; int /*<<< orphan*/  in_h; int /*<<< orphan*/  in_w; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; struct drm_atomic_state* state; } ;
struct komeda_crtc_state {TYPE_1__ base; } ;
struct komeda_component_state {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DRM_MODE_BLEND_PIXEL_NONE ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct komeda_component_state*) ; 
 int FUNC2 (struct komeda_component_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct komeda_scaler* FUNC4 (int /*<<< orphan*/ ,struct drm_atomic_state*) ; 
 struct komeda_component_state* FUNC5 (int /*<<< orphan*/ *,struct drm_atomic_state*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct komeda_scaler*,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 struct komeda_scaler_state* FUNC8 (struct komeda_component_state*) ; 

__attribute__((used)) static int
FUNC9(void *user,
		       struct komeda_crtc_state *kcrtc_st,
		       struct komeda_data_flow_cfg *dflow)
{
	struct drm_atomic_state *drm_st = kcrtc_st->base.state;
	struct komeda_component_state *c_st;
	struct komeda_scaler_state *st;
	struct komeda_scaler *scaler;
	int err = 0;

	if (!(dflow->en_scaling || dflow->en_img_enhancement))
		return 0;

	scaler = FUNC4(dflow->input.component,
						   drm_st);
	if (!scaler) {
		FUNC0("No scaler available");
		return -EINVAL;
	}

	err = FUNC7(scaler, kcrtc_st, dflow);
	if (err)
		return err;

	c_st = FUNC5(&scaler->base,
			drm_st, user, kcrtc_st->base.crtc);
	if (FUNC1(c_st))
		return FUNC2(c_st);

	st = FUNC8(c_st);

	st->hsize_in = dflow->in_w;
	st->vsize_in = dflow->in_h;
	st->hsize_out = dflow->out_w;
	st->vsize_out = dflow->out_h;
	st->right_crop = dflow->right_crop;
	st->left_crop = dflow->left_crop;
	st->total_vsize_in = dflow->total_in_h;
	st->total_hsize_in = dflow->total_in_w;
	st->total_hsize_out = dflow->total_out_w;

	/* Enable alpha processing if the next stage needs the pixel alpha */
	st->en_alpha = dflow->pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE;
	st->en_scaling = dflow->en_scaling;
	st->en_img_enhancement = dflow->en_img_enhancement;
	st->en_split = dflow->en_split;
	st->right_part = dflow->right_part;

	FUNC3(&st->base, &dflow->input, 0);
	FUNC6(&dflow->input, &scaler->base, 0);
	return err;
}