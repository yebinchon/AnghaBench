
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct komeda_data_flow_cfg {int layer_alpha; scalar_t__ blending_zorder; int pixel_blend_mode; int in_h; int out_h; int in_w; int out_w; int input; } ;
struct TYPE_2__ {int crtc; int state; } ;
struct komeda_crtc_state {TYPE_1__ base; } ;
struct komeda_component_state {int dummy; } ;
struct komeda_compiz_state {int vsize; int hsize; } ;
struct komeda_compiz {int base; } ;


 int DRM_MODE_BLEND_PIXEL_NONE ;
 scalar_t__ IS_ERR (struct komeda_component_state*) ;
 int PTR_ERR (struct komeda_component_state*) ;
 struct komeda_component_state* komeda_component_get_state_and_set_user (int *,int ,int ,int ) ;
 int komeda_component_set_output (int *,int *,int ) ;
 int pipeline_composition_size (struct komeda_crtc_state*,int *,int *) ;
 struct komeda_compiz_state* to_compiz_st (struct komeda_component_state*) ;

__attribute__((used)) static int
komeda_compiz_validate(struct komeda_compiz *compiz,
         struct komeda_crtc_state *state,
         struct komeda_data_flow_cfg *dflow)
{
 struct komeda_component_state *c_st;
 struct komeda_compiz_state *st;

 c_st = komeda_component_get_state_and_set_user(&compiz->base,
   state->base.state, state->base.crtc, state->base.crtc);
 if (IS_ERR(c_st))
  return PTR_ERR(c_st);

 st = to_compiz_st(c_st);

 pipeline_composition_size(state, &st->hsize, &st->vsize);

 komeda_component_set_output(&dflow->input, &compiz->base, 0);




 if (dflow) {
  dflow->in_w = st->hsize;
  dflow->in_h = st->vsize;
  dflow->out_w = dflow->in_w;
  dflow->out_h = dflow->in_h;



  dflow->pixel_blend_mode = DRM_MODE_BLEND_PIXEL_NONE;
  dflow->layer_alpha = 0xFF;
  dflow->blending_zorder = 0;
 }

 return 0;
}
