
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct dpp* dpp; } ;
struct pipe_ctx {TYPE_1__ plane_res; } ;
struct dpp {TYPE_2__* funcs; int degamma_params; } ;
struct dc_transfer_func {scalar_t__ type; int tf; int pwl; } ;
struct dc_plane_state {struct dc_transfer_func* in_transfer_func; } ;
struct TYPE_4__ {int (* dpp_set_degamma ) (struct dpp*,int ) ;int (* dpp_program_degamma_pwl ) (struct dpp*,int *) ;} ;


 int BREAK_TO_DEBUGGER () ;
 int IPP_DEGAMMA_MODE_BYPASS ;
 int IPP_DEGAMMA_MODE_HW_sRGB ;
 int IPP_DEGAMMA_MODE_HW_xvYCC ;
 scalar_t__ TF_TYPE_BYPASS ;
 scalar_t__ TF_TYPE_DISTRIBUTED_POINTS ;
 scalar_t__ TF_TYPE_HWPWL ;
 scalar_t__ TF_TYPE_PREDEFINED ;




 int cm_helper_translate_curve_to_degamma_hw_format (struct dc_transfer_func const*,int *) ;
 int dcn20_set_blend_lut (struct pipe_ctx*,struct dc_plane_state const*) ;
 int dcn20_set_shaper_3dlut (struct pipe_ctx*,struct dc_plane_state const*) ;
 int stub1 (struct dpp*,int ) ;
 int stub2 (struct dpp*,int *) ;
 int stub3 (struct dpp*,int *) ;
 int stub4 (struct dpp*,int ) ;
 int stub5 (struct dpp*,int ) ;
 int stub6 (struct dpp*,int ) ;
 int stub7 (struct dpp*,int ) ;
 int stub8 (struct dpp*,int ) ;

bool dcn20_set_input_transfer_func(struct pipe_ctx *pipe_ctx,
       const struct dc_plane_state *plane_state)
{
 struct dpp *dpp_base = pipe_ctx->plane_res.dpp;
 const struct dc_transfer_func *tf = ((void*)0);
 bool result = 1;
 bool use_degamma_ram = 0;

 if (dpp_base == ((void*)0) || plane_state == ((void*)0))
  return 0;

 dcn20_set_shaper_3dlut(pipe_ctx, plane_state);
 dcn20_set_blend_lut(pipe_ctx, plane_state);

 if (plane_state->in_transfer_func)
  tf = plane_state->in_transfer_func;


 if (tf == ((void*)0)) {
  dpp_base->funcs->dpp_set_degamma(dpp_base,
    IPP_DEGAMMA_MODE_BYPASS);
  return 1;
 }

 if (tf->type == TF_TYPE_HWPWL || tf->type == TF_TYPE_DISTRIBUTED_POINTS)
  use_degamma_ram = 1;

 if (use_degamma_ram == 1) {
  if (tf->type == TF_TYPE_HWPWL)
   dpp_base->funcs->dpp_program_degamma_pwl(dpp_base,
     &tf->pwl);
  else if (tf->type == TF_TYPE_DISTRIBUTED_POINTS) {
   cm_helper_translate_curve_to_degamma_hw_format(tf,
     &dpp_base->degamma_params);
   dpp_base->funcs->dpp_program_degamma_pwl(dpp_base,
    &dpp_base->degamma_params);
  }
  return 1;
 }



 if (tf->type == TF_TYPE_PREDEFINED) {
  switch (tf->tf) {
  case 128:
   dpp_base->funcs->dpp_set_degamma(dpp_base,
     IPP_DEGAMMA_MODE_HW_sRGB);
   break;
  case 131:
   dpp_base->funcs->dpp_set_degamma(dpp_base,
     IPP_DEGAMMA_MODE_HW_xvYCC);
   break;
  case 130:
   dpp_base->funcs->dpp_set_degamma(dpp_base,
     IPP_DEGAMMA_MODE_BYPASS);
   break;
  case 129:
  default:
   result = 0;
   break;
  }
 } else if (tf->type == TF_TYPE_BYPASS)
  dpp_base->funcs->dpp_set_degamma(dpp_base,
    IPP_DEGAMMA_MODE_BYPASS);
 else {




  BREAK_TO_DEBUGGER();
  dpp_base->funcs->dpp_set_degamma(dpp_base,
    IPP_DEGAMMA_MODE_BYPASS);
 }

 return result;
}
