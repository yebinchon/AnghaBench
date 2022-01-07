
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct dpp* dpp; } ;
struct pipe_ctx {TYPE_1__ plane_res; } ;
struct dpp {int degamma_params; TYPE_5__* funcs; TYPE_4__* ctx; } ;
struct dc_transfer_func {scalar_t__ type; int tf; } ;
struct dc_plane_state {TYPE_6__* gamma_correction; int format; struct dc_transfer_func* in_transfer_func; } ;
struct TYPE_12__ {int is_identity; } ;
struct TYPE_11__ {int (* dpp_program_degamma_pwl ) (struct dpp*,int *) ;int (* dpp_set_degamma ) (struct dpp*,int ) ;int (* dpp_program_input_lut ) (struct dpp*,TYPE_6__*) ;} ;
struct TYPE_10__ {TYPE_3__* dc; } ;
struct TYPE_8__ {int always_use_regamma; } ;
struct TYPE_9__ {TYPE_2__ debug; } ;


 int IPP_DEGAMMA_MODE_BYPASS ;
 int IPP_DEGAMMA_MODE_HW_sRGB ;
 int IPP_DEGAMMA_MODE_HW_xvYCC ;
 scalar_t__ TF_TYPE_BYPASS ;
 scalar_t__ TF_TYPE_PREDEFINED ;




 int cm_helper_translate_curve_to_degamma_hw_format (struct dc_transfer_func const*,int *) ;
 scalar_t__ dce_use_lut (int ) ;
 int stub1 (struct dpp*,TYPE_6__*) ;
 int stub2 (struct dpp*,int ) ;
 int stub3 (struct dpp*,int ) ;
 int stub4 (struct dpp*,int ) ;
 int stub5 (struct dpp*,int ) ;
 int stub6 (struct dpp*,int ) ;
 int stub7 (struct dpp*,int *) ;

__attribute__((used)) static bool dcn10_set_input_transfer_func(struct pipe_ctx *pipe_ctx,
       const struct dc_plane_state *plane_state)
{
 struct dpp *dpp_base = pipe_ctx->plane_res.dpp;
 const struct dc_transfer_func *tf = ((void*)0);
 bool result = 1;

 if (dpp_base == ((void*)0))
  return 0;

 if (plane_state->in_transfer_func)
  tf = plane_state->in_transfer_func;

 if (plane_state->gamma_correction &&
  !dpp_base->ctx->dc->debug.always_use_regamma
  && !plane_state->gamma_correction->is_identity
   && dce_use_lut(plane_state->format))
  dpp_base->funcs->dpp_program_input_lut(dpp_base, plane_state->gamma_correction);

 if (tf == ((void*)0))
  dpp_base->funcs->dpp_set_degamma(dpp_base, IPP_DEGAMMA_MODE_BYPASS);
 else if (tf->type == TF_TYPE_PREDEFINED) {
  switch (tf->tf) {
  case 128:
   dpp_base->funcs->dpp_set_degamma(dpp_base, IPP_DEGAMMA_MODE_HW_sRGB);
   break;
  case 131:
   dpp_base->funcs->dpp_set_degamma(dpp_base, IPP_DEGAMMA_MODE_HW_xvYCC);
   break;
  case 130:
   dpp_base->funcs->dpp_set_degamma(dpp_base, IPP_DEGAMMA_MODE_BYPASS);
   break;
  case 129:
  default:
   result = 0;
   break;
  }
 } else if (tf->type == TF_TYPE_BYPASS) {
  dpp_base->funcs->dpp_set_degamma(dpp_base, IPP_DEGAMMA_MODE_BYPASS);
 } else {
  cm_helper_translate_curve_to_degamma_hw_format(tf,
     &dpp_base->degamma_params);
  dpp_base->funcs->dpp_program_degamma_pwl(dpp_base,
    &dpp_base->degamma_params);
  result = 1;
 }

 return result;
}
