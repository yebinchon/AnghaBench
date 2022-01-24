#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct drm_plane* plane; } ;
struct komeda_plane_state {TYPE_1__ base; } ;
struct komeda_pipeline {int /*<<< orphan*/  compiz; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; struct komeda_pipeline* pipeline; } ;
struct komeda_layer {TYPE_2__ base; } ;
struct komeda_data_flow_cfg {scalar_t__ en_split; int /*<<< orphan*/  out_h; int /*<<< orphan*/  out_w; int /*<<< orphan*/  out_y; int /*<<< orphan*/  out_x; int /*<<< orphan*/  in_h; int /*<<< orphan*/  in_w; int /*<<< orphan*/  in_y; int /*<<< orphan*/  in_x; } ;
struct komeda_crtc_state {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct drm_plane {int /*<<< orphan*/  name; TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 int FUNC2 (struct komeda_layer*,struct komeda_plane_state*,struct komeda_data_flow_cfg*) ; 
 int FUNC3 (struct drm_plane*,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 scalar_t__ FUNC4 (struct komeda_pipeline*,struct komeda_data_flow_cfg*) ; 

int FUNC5(struct komeda_layer *layer,
				 struct komeda_plane_state *kplane_st,
				 struct komeda_crtc_state *kcrtc_st,
				 struct komeda_data_flow_cfg *dflow)
{
	struct drm_plane *plane = kplane_st->base.plane;
	struct komeda_pipeline *pipe = layer->base.pipeline;
	int err;

	FUNC0("%s handling [PLANE:%d:%s]: src[x/y:%d/%d, w/h:%d/%d] disp[x/y:%d/%d, w/h:%d/%d]",
			 layer->base.name, plane->base.id, plane->name,
			 dflow->in_x, dflow->in_y, dflow->in_w, dflow->in_h,
			 dflow->out_x, dflow->out_y, dflow->out_w, dflow->out_h);

	err = FUNC2(layer, kplane_st, dflow);
	if (err)
		return err;

	err = FUNC3(plane, kcrtc_st, dflow);
	if (err)
		return err;

	/* if split, check if can put the data flow into merger */
	if (dflow->en_split && FUNC4(pipe, dflow))
		return 0;

	err = FUNC1(pipe->compiz, kcrtc_st, dflow);

	return err;
}