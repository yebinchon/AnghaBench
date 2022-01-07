
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct komeda_layer_state {int base; int * addr; int vsize; int hsize; } ;
struct komeda_layer {int base; } ;
struct TYPE_6__ {TYPE_2__* format; } ;
struct komeda_fb {TYPE_3__ base; } ;
struct komeda_data_flow_cfg {int input; int out_y; int out_x; int out_h; int out_w; } ;
struct komeda_component_state {int dummy; } ;
struct drm_connector_state {int crtc; int connector; int state; TYPE_1__* writeback_job; } ;
struct TYPE_5__ {int num_planes; } ;
struct TYPE_4__ {int fb; } ;


 scalar_t__ IS_ERR (struct komeda_component_state*) ;
 int PTR_ERR (struct komeda_component_state*) ;
 int komeda_component_add_input (int *,int *,int ) ;
 struct komeda_component_state* komeda_component_get_state_and_set_user (int *,int ,int ,int ) ;
 int komeda_component_set_output (int *,int *,int ) ;
 int komeda_fb_get_pixel_addr (struct komeda_fb*,int ,int ,int) ;
 int komeda_layer_check_cfg (struct komeda_layer*,struct komeda_fb*,struct komeda_data_flow_cfg*) ;
 struct komeda_fb* to_kfb (int ) ;
 struct komeda_layer_state* to_layer_st (struct komeda_component_state*) ;

__attribute__((used)) static int
komeda_wb_layer_validate(struct komeda_layer *wb_layer,
    struct drm_connector_state *conn_st,
    struct komeda_data_flow_cfg *dflow)
{
 struct komeda_fb *kfb = to_kfb(conn_st->writeback_job->fb);
 struct komeda_component_state *c_st;
 struct komeda_layer_state *st;
 int i, err;

 err = komeda_layer_check_cfg(wb_layer, kfb, dflow);
 if (err)
  return err;

 c_st = komeda_component_get_state_and_set_user(&wb_layer->base,
   conn_st->state, conn_st->connector, conn_st->crtc);
 if (IS_ERR(c_st))
  return PTR_ERR(c_st);

 st = to_layer_st(c_st);

 st->hsize = dflow->out_w;
 st->vsize = dflow->out_h;

 for (i = 0; i < kfb->base.format->num_planes; i++)
  st->addr[i] = komeda_fb_get_pixel_addr(kfb, dflow->out_x,
             dflow->out_y, i);

 komeda_component_add_input(&st->base, &dflow->input, 0);
 komeda_component_set_output(&dflow->input, &wb_layer->base, 0);

 return 0;
}
