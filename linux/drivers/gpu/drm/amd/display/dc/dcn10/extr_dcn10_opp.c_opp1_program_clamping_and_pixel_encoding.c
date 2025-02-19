
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;
struct dcn10_opp {int dummy; } ;
struct clamping_and_pixel_encoding_params {int dummy; } ;


 struct dcn10_opp* TO_DCN10_OPP (struct output_pixel_processor*) ;
 int opp1_set_clamping (struct dcn10_opp*,struct clamping_and_pixel_encoding_params const*) ;
 int opp1_set_pixel_encoding (struct dcn10_opp*,struct clamping_and_pixel_encoding_params const*) ;

__attribute__((used)) static void opp1_program_clamping_and_pixel_encoding(
 struct output_pixel_processor *opp,
 const struct clamping_and_pixel_encoding_params *params)
{
 struct dcn10_opp *oppn10 = TO_DCN10_OPP(opp);

 opp1_set_clamping(oppn10, params);
 opp1_set_pixel_encoding(oppn10, params);
}
