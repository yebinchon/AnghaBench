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
struct drm_plane_state {int /*<<< orphan*/  crtc; int /*<<< orphan*/  plane; int /*<<< orphan*/  state; struct drm_framebuffer* fb; } ;
struct komeda_plane_state {struct drm_plane_state base; } ;
struct komeda_layer_state {int /*<<< orphan*/  rot; int /*<<< orphan*/ * addr; scalar_t__ afbc_crop_b; scalar_t__ afbc_crop_t; scalar_t__ afbc_crop_r; scalar_t__ afbc_crop_l; scalar_t__ vsize; scalar_t__ hsize; } ;
struct komeda_layer {int /*<<< orphan*/  base; } ;
struct komeda_fb {scalar_t__ aligned_h; scalar_t__ aligned_w; } ;
struct komeda_data_flow_cfg {int /*<<< orphan*/  input; scalar_t__ in_y; scalar_t__ in_x; scalar_t__ in_h; scalar_t__ in_w; int /*<<< orphan*/  rot; } ;
struct komeda_component_state {int dummy; } ;
struct drm_framebuffer {TYPE_1__* format; scalar_t__ modifier; } ;
struct TYPE_2__ {int num_planes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct komeda_component_state*) ; 
 int FUNC1 (struct komeda_component_state*) ; 
 struct komeda_component_state* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct komeda_component_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct komeda_fb*,scalar_t__,scalar_t__,int) ; 
 int FUNC6 (struct komeda_layer*,struct komeda_fb*,struct komeda_data_flow_cfg*) ; 
 int /*<<< orphan*/  FUNC7 (struct komeda_data_flow_cfg*,int /*<<< orphan*/ ) ; 
 struct komeda_fb* FUNC8 (struct drm_framebuffer*) ; 
 struct komeda_layer_state* FUNC9 (struct komeda_component_state*) ; 

__attribute__((used)) static int
FUNC10(struct komeda_layer *layer,
		      struct komeda_plane_state *kplane_st,
		      struct komeda_data_flow_cfg *dflow)
{
	struct drm_plane_state *plane_st = &kplane_st->base;
	struct drm_framebuffer *fb = plane_st->fb;
	struct komeda_fb *kfb = FUNC8(fb);
	struct komeda_component_state *c_st;
	struct komeda_layer_state *st;
	int i, err;

	err = FUNC6(layer, kfb, dflow);
	if (err)
		return err;

	c_st = FUNC2(&layer->base,
			plane_st->state, plane_st->plane, plane_st->crtc);
	if (FUNC0(c_st))
		return FUNC1(c_st);

	st = FUNC9(c_st);

	st->rot = dflow->rot;

	if (fb->modifier) {
		st->hsize = kfb->aligned_w;
		st->vsize = kfb->aligned_h;
		st->afbc_crop_l = dflow->in_x;
		st->afbc_crop_r = kfb->aligned_w - dflow->in_x - dflow->in_w;
		st->afbc_crop_t = dflow->in_y;
		st->afbc_crop_b = kfb->aligned_h - dflow->in_y - dflow->in_h;
	} else {
		st->hsize = dflow->in_w;
		st->vsize = dflow->in_h;
		st->afbc_crop_l = 0;
		st->afbc_crop_r = 0;
		st->afbc_crop_t = 0;
		st->afbc_crop_b = 0;
	}

	for (i = 0; i < fb->format->num_planes; i++)
		st->addr[i] = FUNC5(kfb, dflow->in_x,
						       dflow->in_y, i);

	err = FUNC4(&layer->base, c_st);
	if (err)
		return err;

	/* update the data flow for the next stage */
	FUNC3(&dflow->input, &layer->base, 0);

	/*
	 * The rotation has been handled by layer, so adjusted the data flow for
	 * the next stage.
	 */
	FUNC7(dflow, st->rot);

	return 0;
}