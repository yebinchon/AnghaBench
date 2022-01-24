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
struct komeda_layer {int dummy; } ;
struct komeda_data_flow_cfg {scalar_t__ en_split; } ;
struct komeda_crtc_state {int dummy; } ;
struct drm_writeback_job {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int connectors_changed; int /*<<< orphan*/  active; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; struct drm_writeback_job* writeback_job; } ;
struct TYPE_2__ {struct komeda_layer* wb_layer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct drm_crtc_state*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct komeda_layer*,struct drm_connector_state*,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 int FUNC3 (struct komeda_layer*,struct drm_connector_state*,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 int FUNC4 (struct komeda_layer*,struct drm_connector_state*,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 struct komeda_crtc_state* FUNC6 (struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct drm_encoder *encoder,
			       struct drm_crtc_state *crtc_st,
			       struct drm_connector_state *conn_st)
{
	struct komeda_crtc_state *kcrtc_st = FUNC6(crtc_st);
	struct drm_writeback_job *writeback_job = conn_st->writeback_job;
	struct komeda_layer *wb_layer;
	struct komeda_data_flow_cfg dflow;
	int err;

	if (!writeback_job)
		return 0;

	if (!crtc_st->active) {
		FUNC0("Cannot write the composition result out on a inactive CRTC.\n");
		return -EINVAL;
	}

	wb_layer = FUNC5(FUNC7(conn_st->connector))->wb_layer;

	/*
	 * No need for a full modested when the only connector changed is the
	 * writeback connector.
	 */
	if (crtc_st->connectors_changed &&
	    FUNC1(crtc_st, conn_st->connector))
		crtc_st->connectors_changed = false;

	err = FUNC4(wb_layer, conn_st, kcrtc_st, &dflow);
	if (err)
		return err;

	if (dflow.en_split)
		err = FUNC3(wb_layer,
				conn_st, kcrtc_st, &dflow);
	else
		err = FUNC2(wb_layer,
				conn_st, kcrtc_st, &dflow);

	return err;
}