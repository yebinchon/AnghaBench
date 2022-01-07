
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct komeda_scaler_state {int en_alpha; int base; int right_part; int en_split; scalar_t__ en_img_enhancement; scalar_t__ en_scaling; int total_hsize_out; int total_hsize_in; int total_vsize_in; int left_crop; int right_crop; int vsize_out; int hsize_out; int vsize_in; int hsize_in; } ;
struct komeda_scaler {int base; } ;
struct TYPE_5__ {int component; } ;
struct komeda_data_flow_cfg {scalar_t__ pixel_blend_mode; TYPE_2__ input; int right_part; int en_split; scalar_t__ en_img_enhancement; scalar_t__ en_scaling; int total_out_w; int total_in_w; int total_in_h; int left_crop; int right_crop; int out_h; int out_w; int in_h; int in_w; } ;
struct TYPE_4__ {int crtc; struct drm_atomic_state* state; } ;
struct komeda_crtc_state {TYPE_1__ base; } ;
struct komeda_component_state {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 int DRM_DEBUG_ATOMIC (char*) ;
 scalar_t__ DRM_MODE_BLEND_PIXEL_NONE ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct komeda_component_state*) ;
 int PTR_ERR (struct komeda_component_state*) ;
 int komeda_component_add_input (int *,TYPE_2__*,int ) ;
 struct komeda_scaler* komeda_component_get_avail_scaler (int ,struct drm_atomic_state*) ;
 struct komeda_component_state* komeda_component_get_state_and_set_user (int *,struct drm_atomic_state*,void*,int ) ;
 int komeda_component_set_output (TYPE_2__*,int *,int ) ;
 int komeda_scaler_check_cfg (struct komeda_scaler*,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ;
 struct komeda_scaler_state* to_scaler_st (struct komeda_component_state*) ;

__attribute__((used)) static int
komeda_scaler_validate(void *user,
         struct komeda_crtc_state *kcrtc_st,
         struct komeda_data_flow_cfg *dflow)
{
 struct drm_atomic_state *drm_st = kcrtc_st->base.state;
 struct komeda_component_state *c_st;
 struct komeda_scaler_state *st;
 struct komeda_scaler *scaler;
 int err = 0;

 if (!(dflow->en_scaling || dflow->en_img_enhancement))
  return 0;

 scaler = komeda_component_get_avail_scaler(dflow->input.component,
         drm_st);
 if (!scaler) {
  DRM_DEBUG_ATOMIC("No scaler available");
  return -EINVAL;
 }

 err = komeda_scaler_check_cfg(scaler, kcrtc_st, dflow);
 if (err)
  return err;

 c_st = komeda_component_get_state_and_set_user(&scaler->base,
   drm_st, user, kcrtc_st->base.crtc);
 if (IS_ERR(c_st))
  return PTR_ERR(c_st);

 st = to_scaler_st(c_st);

 st->hsize_in = dflow->in_w;
 st->vsize_in = dflow->in_h;
 st->hsize_out = dflow->out_w;
 st->vsize_out = dflow->out_h;
 st->right_crop = dflow->right_crop;
 st->left_crop = dflow->left_crop;
 st->total_vsize_in = dflow->total_in_h;
 st->total_hsize_in = dflow->total_in_w;
 st->total_hsize_out = dflow->total_out_w;


 st->en_alpha = dflow->pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE;
 st->en_scaling = dflow->en_scaling;
 st->en_img_enhancement = dflow->en_img_enhancement;
 st->en_split = dflow->en_split;
 st->right_part = dflow->right_part;

 komeda_component_add_input(&st->base, &dflow->input, 0);
 komeda_component_set_output(&dflow->input, &scaler->base, 0);
 return err;
}
