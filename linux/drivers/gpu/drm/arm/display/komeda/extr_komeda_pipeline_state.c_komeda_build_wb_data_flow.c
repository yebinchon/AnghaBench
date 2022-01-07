
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_layer {int dummy; } ;
struct komeda_data_flow_cfg {int dummy; } ;
struct komeda_crtc_state {int dummy; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {int dummy; } ;


 int komeda_scaler_validate (struct drm_connector*,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ;
 int komeda_wb_layer_validate (struct komeda_layer*,struct drm_connector_state*,struct komeda_data_flow_cfg*) ;

int komeda_build_wb_data_flow(struct komeda_layer *wb_layer,
         struct drm_connector_state *conn_st,
         struct komeda_crtc_state *kcrtc_st,
         struct komeda_data_flow_cfg *dflow)
{
 struct drm_connector *conn = conn_st->connector;
 int err;

 err = komeda_scaler_validate(conn, kcrtc_st, dflow);
 if (err)
  return err;

 return komeda_wb_layer_validate(wb_layer, conn_st, dflow);
}
