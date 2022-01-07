
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct input_pixel_processor* ipp; } ;
struct pipe_ctx {TYPE_1__ plane_res; } ;
struct ipp_prescale_params {int member_0; } ;
struct input_pixel_processor {TYPE_2__* funcs; } ;
struct dc_transfer_func {scalar_t__ type; int tf; } ;
struct dc_plane_state {TYPE_3__* gamma_correction; int format; struct dc_transfer_func* in_transfer_func; } ;
struct TYPE_6__ {int is_identity; } ;
struct TYPE_5__ {int (* ipp_set_degamma ) (struct input_pixel_processor*,int ) ;int (* ipp_program_input_lut ) (struct input_pixel_processor*,TYPE_3__*) ;int (* ipp_program_prescale ) (struct input_pixel_processor*,struct ipp_prescale_params*) ;} ;


 int IPP_DEGAMMA_MODE_BYPASS ;
 int IPP_DEGAMMA_MODE_HW_sRGB ;
 int IPP_DEGAMMA_MODE_HW_xvYCC ;
 scalar_t__ TF_TYPE_BYPASS ;
 scalar_t__ TF_TYPE_PREDEFINED ;




 int build_prescale_params (struct ipp_prescale_params*,struct dc_plane_state const*) ;
 scalar_t__ dce_use_lut (int ) ;
 int stub1 (struct input_pixel_processor*,struct ipp_prescale_params*) ;
 int stub2 (struct input_pixel_processor*,TYPE_3__*) ;
 int stub3 (struct input_pixel_processor*,int ) ;
 int stub4 (struct input_pixel_processor*,int ) ;
 int stub5 (struct input_pixel_processor*,int ) ;
 int stub6 (struct input_pixel_processor*,int ) ;
 int stub7 (struct input_pixel_processor*,int ) ;

__attribute__((used)) static bool
dce110_set_input_transfer_func(struct pipe_ctx *pipe_ctx,
          const struct dc_plane_state *plane_state)
{
 struct input_pixel_processor *ipp = pipe_ctx->plane_res.ipp;
 const struct dc_transfer_func *tf = ((void*)0);
 struct ipp_prescale_params prescale_params = { 0 };
 bool result = 1;

 if (ipp == ((void*)0))
  return 0;

 if (plane_state->in_transfer_func)
  tf = plane_state->in_transfer_func;

 build_prescale_params(&prescale_params, plane_state);
 ipp->funcs->ipp_program_prescale(ipp, &prescale_params);

 if (plane_state->gamma_correction &&
   !plane_state->gamma_correction->is_identity &&
   dce_use_lut(plane_state->format))
  ipp->funcs->ipp_program_input_lut(ipp, plane_state->gamma_correction);

 if (tf == ((void*)0)) {

  ipp->funcs->ipp_set_degamma(ipp, IPP_DEGAMMA_MODE_HW_sRGB);
 } else if (tf->type == TF_TYPE_PREDEFINED) {
  switch (tf->tf) {
  case 128:
   ipp->funcs->ipp_set_degamma(ipp, IPP_DEGAMMA_MODE_HW_sRGB);
   break;
  case 131:
   ipp->funcs->ipp_set_degamma(ipp, IPP_DEGAMMA_MODE_HW_xvYCC);
   break;
  case 130:
   ipp->funcs->ipp_set_degamma(ipp, IPP_DEGAMMA_MODE_BYPASS);
   break;
  case 129:
  default:
   result = 0;
   break;
  }
 } else if (tf->type == TF_TYPE_BYPASS) {
  ipp->funcs->ipp_set_degamma(ipp, IPP_DEGAMMA_MODE_BYPASS);
 } else {

  result = 0;
 }

 return result;
}
