
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int color_depth; } ;
struct TYPE_5__ {TYPE_1__ pix_clk_params; } ;
struct pipe_ctx {TYPE_3__* stream; TYPE_2__ stream_res; } ;
struct fixed31_32 {int dummy; } ;
struct TYPE_6__ {int timing; } ;


 int PEAK_FACTOR_X1000 ;
 int dc_bandwidth_in_kbps_from_timing (int *) ;
 struct fixed31_32 dc_fixpt_from_fraction (int,int) ;
 int get_color_depth (int ) ;

__attribute__((used)) static struct fixed31_32 get_pbn_from_timing(struct pipe_ctx *pipe_ctx)
{
 uint32_t bpc;
 uint64_t kbps;
 struct fixed31_32 peak_kbps;
 uint32_t numerator;
 uint32_t denominator;

 bpc = get_color_depth(pipe_ctx->stream_res.pix_clk_params.color_depth);
 kbps = dc_bandwidth_in_kbps_from_timing(&pipe_ctx->stream->timing);
 numerator = 64 * PEAK_FACTOR_X1000;
 denominator = 54 * 8 * 1000 * 1000;
 kbps *= numerator;
 peak_kbps = dc_fixpt_from_fraction(kbps, denominator);

 return peak_kbps;
}
