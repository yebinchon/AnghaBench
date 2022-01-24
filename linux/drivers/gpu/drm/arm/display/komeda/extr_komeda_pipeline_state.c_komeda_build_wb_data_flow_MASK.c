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
struct komeda_layer {int dummy; } ;
struct komeda_data_flow_cfg {int dummy; } ;
struct komeda_crtc_state {int dummy; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 int FUNC1 (struct komeda_layer*,struct drm_connector_state*,struct komeda_data_flow_cfg*) ; 

int FUNC2(struct komeda_layer *wb_layer,
			      struct drm_connector_state *conn_st,
			      struct komeda_crtc_state *kcrtc_st,
			      struct komeda_data_flow_cfg *dflow)
{
	struct drm_connector *conn = conn_st->connector;
	int err;

	err = FUNC0(conn, kcrtc_st, dflow);
	if (err)
		return err;

	return FUNC1(wb_layer, conn_st, dflow);
}