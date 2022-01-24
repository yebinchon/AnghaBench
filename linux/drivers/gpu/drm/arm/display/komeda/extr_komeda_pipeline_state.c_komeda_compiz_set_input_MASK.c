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
typedef  scalar_t__ u16 ;
struct komeda_data_flow_cfg {int blending_zorder; scalar_t__ out_x; scalar_t__ out_w; scalar_t__ out_y; scalar_t__ out_h; int /*<<< orphan*/  input; int /*<<< orphan*/  layer_alpha; int /*<<< orphan*/  pixel_blend_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; struct drm_atomic_state* state; } ;
struct komeda_crtc_state {TYPE_1__ base; } ;
struct komeda_component_state {int /*<<< orphan*/  changed_active_inputs; } ;
struct komeda_compiz_input_cfg {scalar_t__ hsize; scalar_t__ vsize; scalar_t__ hoffset; scalar_t__ voffset; int /*<<< orphan*/  layer_alpha; int /*<<< orphan*/  pixel_blend_mode; } ;
struct komeda_compiz {int /*<<< orphan*/  base; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_4__ {struct komeda_compiz_input_cfg* cins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct komeda_component_state*) ; 
 int FUNC3 (struct komeda_component_state*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct komeda_component_state*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (struct komeda_component_state*,int /*<<< orphan*/ *,int) ; 
 struct komeda_component_state* FUNC7 (int /*<<< orphan*/ *,struct drm_atomic_state*) ; 
 struct komeda_component_state* FUNC8 (int /*<<< orphan*/ *,struct drm_atomic_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct komeda_compiz_input_cfg*,struct komeda_compiz_input_cfg*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct komeda_crtc_state*,scalar_t__*,scalar_t__*) ; 
 TYPE_2__* FUNC12 (struct komeda_component_state*) ; 

__attribute__((used)) static int
FUNC13(struct komeda_compiz *compiz,
			struct komeda_crtc_state *kcrtc_st,
			struct komeda_data_flow_cfg *dflow)
{
	struct drm_atomic_state *drm_st = kcrtc_st->base.state;
	struct komeda_component_state *c_st, *old_st;
	struct komeda_compiz_input_cfg *cin;
	u16 compiz_w, compiz_h;
	int idx = dflow->blending_zorder;

	FUNC11(kcrtc_st, &compiz_w, &compiz_h);
	/* check display rect */
	if ((dflow->out_x + dflow->out_w > compiz_w) ||
	    (dflow->out_y + dflow->out_h > compiz_h) ||
	     dflow->out_w == 0 || dflow->out_h == 0) {
		FUNC1("invalid disp rect [x=%d, y=%d, w=%d, h=%d]\n",
				 dflow->out_x, dflow->out_y,
				 dflow->out_w, dflow->out_h);
		return -EINVAL;
	}

	c_st = FUNC8(&compiz->base, drm_st,
			kcrtc_st->base.crtc, kcrtc_st->base.crtc);
	if (FUNC2(c_st))
		return FUNC3(c_st);

	if (FUNC6(c_st, &dflow->input, idx))
		return -EINVAL;

	cin = &(FUNC12(c_st)->cins[idx]);

	cin->hsize   = dflow->out_w;
	cin->vsize   = dflow->out_h;
	cin->hoffset = dflow->out_x;
	cin->voffset = dflow->out_y;
	cin->pixel_blend_mode = dflow->pixel_blend_mode;
	cin->layer_alpha = dflow->layer_alpha;

	old_st = FUNC7(&compiz->base, drm_st);
	FUNC4(!old_st);

	/* compare with old to check if this input has been changed */
	if (FUNC10(&(FUNC12(old_st)->cins[idx]), cin, sizeof(*cin)))
		c_st->changed_active_inputs |= FUNC0(idx);

	FUNC5(c_st, &dflow->input, idx);
	FUNC9(&dflow->input, &compiz->base, 0);

	return 0;
}