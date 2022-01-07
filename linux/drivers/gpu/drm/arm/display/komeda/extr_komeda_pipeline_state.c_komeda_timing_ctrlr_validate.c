
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct komeda_timing_ctrlr_state {int base; } ;
struct komeda_timing_ctrlr {int base; } ;
struct komeda_data_flow_cfg {int input; } ;
struct TYPE_2__ {int state; struct drm_crtc* crtc; } ;
struct komeda_crtc_state {TYPE_1__ base; } ;
struct komeda_component_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 scalar_t__ IS_ERR (struct komeda_component_state*) ;
 int PTR_ERR (struct komeda_component_state*) ;
 int komeda_component_add_input (int *,int *,int ) ;
 struct komeda_component_state* komeda_component_get_state_and_set_user (int *,int ,struct drm_crtc*,struct drm_crtc*) ;
 int komeda_component_set_output (int *,int *,int ) ;
 struct komeda_timing_ctrlr_state* to_ctrlr_st (struct komeda_component_state*) ;

__attribute__((used)) static int
komeda_timing_ctrlr_validate(struct komeda_timing_ctrlr *ctrlr,
        struct komeda_crtc_state *kcrtc_st,
        struct komeda_data_flow_cfg *dflow)
{
 struct drm_crtc *crtc = kcrtc_st->base.crtc;
 struct komeda_timing_ctrlr_state *st;
 struct komeda_component_state *c_st;

 c_st = komeda_component_get_state_and_set_user(&ctrlr->base,
   kcrtc_st->base.state, crtc, crtc);
 if (IS_ERR(c_st))
  return PTR_ERR(c_st);

 st = to_ctrlr_st(c_st);

 komeda_component_add_input(&st->base, &dflow->input, 0);
 komeda_component_set_output(&dflow->input, &ctrlr->base, 0);

 return 0;
}
