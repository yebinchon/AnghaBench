
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;
struct clamping_and_pixel_encoding_params {scalar_t__ pixel_encoding; } ;
struct bit_depth_reduction_params {int dummy; } ;


 scalar_t__ PIXEL_ENCODING_YCBCR420 ;
 int dce110_opp_program_bit_depth_reduction (struct output_pixel_processor*,struct bit_depth_reduction_params*) ;
 int dce110_opp_program_clamping_and_pixel_encoding (struct output_pixel_processor*,struct clamping_and_pixel_encoding_params*) ;
 int program_formatter_420_memory (struct output_pixel_processor*) ;
 int program_formatter_reset_dig_resync_fifo (struct output_pixel_processor*) ;

void dce110_opp_program_fmt(
 struct output_pixel_processor *opp,
 struct bit_depth_reduction_params *fmt_bit_depth,
 struct clamping_and_pixel_encoding_params *clamping)
{



 if (clamping->pixel_encoding == PIXEL_ENCODING_YCBCR420)
  program_formatter_420_memory(opp);

 dce110_opp_program_bit_depth_reduction(
  opp,
  fmt_bit_depth);

 dce110_opp_program_clamping_and_pixel_encoding(
  opp,
  clamping);

 if (clamping->pixel_encoding == PIXEL_ENCODING_YCBCR420)
  program_formatter_reset_dig_resync_fifo(opp);

 return;
}
