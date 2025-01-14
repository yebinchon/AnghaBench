
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_4__* dpp; } ;
struct pipe_ctx {TYPE_2__ plane_res; TYPE_3__* plane_state; } ;
struct fixed31_32 {int dummy; } ;
struct custom_float_format {int exponenta_bits; int mantissa_bits; int sign; } ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct TYPE_7__ {int sdr_white_level; } ;
struct TYPE_5__ {int (* dpp_set_hdr_multiplier ) (TYPE_4__*,int) ;} ;


 int convert_to_custom_float_format (struct fixed31_32,struct custom_float_format*,int*) ;
 struct fixed31_32 dc_fixpt_from_fraction (int,int) ;
 int stub1 (TYPE_4__*,int) ;

void set_hdr_multiplier(struct pipe_ctx *pipe_ctx)
{
 struct fixed31_32 multiplier = dc_fixpt_from_fraction(
   pipe_ctx->plane_state->sdr_white_level, 80);
 uint32_t hw_mult = 0x1f000;
 struct custom_float_format fmt;

 fmt.exponenta_bits = 6;
 fmt.mantissa_bits = 12;
 fmt.sign = 1;

 if (pipe_ctx->plane_state->sdr_white_level > 80)
  convert_to_custom_float_format(multiplier, &fmt, &hw_mult);

 pipe_ctx->plane_res.dpp->funcs->dpp_set_hdr_multiplier(
   pipe_ctx->plane_res.dpp, hw_mult);
}
