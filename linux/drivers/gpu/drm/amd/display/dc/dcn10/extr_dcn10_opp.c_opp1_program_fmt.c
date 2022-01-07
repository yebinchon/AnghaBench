
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;
struct dcn10_opp {int dummy; } ;
struct clamping_and_pixel_encoding_params {scalar_t__ pixel_encoding; } ;
struct bit_depth_reduction_params {int dummy; } ;


 int FMT_MAP420MEM_PWR_FORCE ;
 int FMT_MAP420_MEMORY_CONTROL ;
 scalar_t__ PIXEL_ENCODING_YCBCR420 ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dcn10_opp* TO_DCN10_OPP (struct output_pixel_processor*) ;
 int opp1_program_bit_depth_reduction (struct output_pixel_processor*,struct bit_depth_reduction_params*) ;
 int opp1_program_clamping_and_pixel_encoding (struct output_pixel_processor*,struct clamping_and_pixel_encoding_params*) ;

void opp1_program_fmt(
 struct output_pixel_processor *opp,
 struct bit_depth_reduction_params *fmt_bit_depth,
 struct clamping_and_pixel_encoding_params *clamping)
{
 struct dcn10_opp *oppn10 = TO_DCN10_OPP(opp);

 if (clamping->pixel_encoding == PIXEL_ENCODING_YCBCR420)
  REG_UPDATE(FMT_MAP420_MEMORY_CONTROL, FMT_MAP420MEM_PWR_FORCE, 0);



 opp1_program_bit_depth_reduction(
  opp,
  fmt_bit_depth);

 opp1_program_clamping_and_pixel_encoding(
  opp,
  clamping);

 return;
}
