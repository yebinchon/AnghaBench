
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;
struct dcn10_opp {int dummy; } ;
struct bit_depth_reduction_params {int dummy; } ;


 struct dcn10_opp* TO_DCN10_OPP (struct output_pixel_processor*) ;
 int opp1_set_spatial_dither (struct dcn10_opp*,struct bit_depth_reduction_params const*) ;
 int opp1_set_truncation (struct dcn10_opp*,struct bit_depth_reduction_params const*) ;

void opp1_program_bit_depth_reduction(
 struct output_pixel_processor *opp,
 const struct bit_depth_reduction_params *params)
{
 struct dcn10_opp *oppn10 = TO_DCN10_OPP(opp);

 opp1_set_truncation(oppn10, params);
 opp1_set_spatial_dither(oppn10, params);



}
