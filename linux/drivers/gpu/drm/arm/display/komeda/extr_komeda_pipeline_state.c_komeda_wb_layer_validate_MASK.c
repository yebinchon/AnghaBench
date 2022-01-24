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
struct komeda_layer_state {int /*<<< orphan*/  base; int /*<<< orphan*/ * addr; int /*<<< orphan*/  vsize; int /*<<< orphan*/  hsize; } ;
struct komeda_layer {int /*<<< orphan*/  base; } ;
struct TYPE_6__ {TYPE_2__* format; } ;
struct komeda_fb {TYPE_3__ base; } ;
struct komeda_data_flow_cfg {int /*<<< orphan*/  input; int /*<<< orphan*/  out_y; int /*<<< orphan*/  out_x; int /*<<< orphan*/  out_h; int /*<<< orphan*/  out_w; } ;
struct komeda_component_state {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  crtc; int /*<<< orphan*/  connector; int /*<<< orphan*/  state; TYPE_1__* writeback_job; } ;
struct TYPE_5__ {int num_planes; } ;
struct TYPE_4__ {int /*<<< orphan*/  fb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct komeda_component_state*) ; 
 int FUNC1 (struct komeda_component_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct komeda_component_state* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct komeda_fb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct komeda_layer*,struct komeda_fb*,struct komeda_data_flow_cfg*) ; 
 struct komeda_fb* FUNC7 (int /*<<< orphan*/ ) ; 
 struct komeda_layer_state* FUNC8 (struct komeda_component_state*) ; 

__attribute__((used)) static int
FUNC9(struct komeda_layer *wb_layer,
			 struct drm_connector_state *conn_st,
			 struct komeda_data_flow_cfg *dflow)
{
	struct komeda_fb *kfb = FUNC7(conn_st->writeback_job->fb);
	struct komeda_component_state *c_st;
	struct komeda_layer_state *st;
	int i, err;

	err = FUNC6(wb_layer, kfb, dflow);
	if (err)
		return err;

	c_st = FUNC3(&wb_layer->base,
			conn_st->state, conn_st->connector, conn_st->crtc);
	if (FUNC0(c_st))
		return FUNC1(c_st);

	st = FUNC8(c_st);

	st->hsize = dflow->out_w;
	st->vsize = dflow->out_h;

	for (i = 0; i < kfb->base.format->num_planes; i++)
		st->addr[i] = FUNC5(kfb, dflow->out_x,
						       dflow->out_y, i);

	FUNC2(&st->base, &dflow->input, 0);
	FUNC4(&dflow->input, &wb_layer->base, 0);

	return 0;
}