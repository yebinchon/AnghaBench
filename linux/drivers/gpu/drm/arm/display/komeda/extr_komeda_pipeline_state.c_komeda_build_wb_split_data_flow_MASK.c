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
struct komeda_pipeline {int /*<<< orphan*/  merger; int /*<<< orphan*/  splitter; } ;
struct TYPE_2__ {struct komeda_pipeline* pipeline; } ;
struct komeda_layer {TYPE_1__ base; } ;
struct komeda_data_flow_cfg {int dummy; } ;
struct komeda_crtc_state {int dummy; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct drm_connector_state*,struct komeda_crtc_state*,struct komeda_data_flow_cfg*,struct komeda_data_flow_cfg*,struct komeda_data_flow_cfg*) ; 
 int FUNC1 (struct drm_connector*,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct drm_connector_state*,struct komeda_data_flow_cfg*,struct komeda_data_flow_cfg*,struct komeda_data_flow_cfg*) ; 
 int FUNC3 (struct komeda_layer*,struct drm_connector_state*,struct komeda_data_flow_cfg*) ; 

int FUNC4(struct komeda_layer *wb_layer,
				    struct drm_connector_state *conn_st,
				    struct komeda_crtc_state *kcrtc_st,
				    struct komeda_data_flow_cfg *dflow)
{
	struct komeda_pipeline *pipe = wb_layer->base.pipeline;
	struct drm_connector *conn = conn_st->connector;
	struct komeda_data_flow_cfg l_dflow, r_dflow;
	int err;

	err = FUNC2(pipe->splitter, conn_st,
				       dflow, &l_dflow, &r_dflow);
	if (err)
		return err;
	err = FUNC1(conn, kcrtc_st, &l_dflow);
	if (err)
		return err;

	err = FUNC1(conn, kcrtc_st, &r_dflow);
	if (err)
		return err;

	err = FUNC0(pipe->merger, conn_st, kcrtc_st,
				     &l_dflow, &r_dflow, dflow);
	if (err)
		return err;

	return FUNC3(wb_layer, conn_st, dflow);
}