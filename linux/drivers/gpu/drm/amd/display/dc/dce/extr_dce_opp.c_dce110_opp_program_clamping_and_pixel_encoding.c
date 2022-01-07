
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;
struct dce110_opp {int dummy; } ;
struct clamping_and_pixel_encoding_params {int dummy; } ;


 struct dce110_opp* TO_DCE110_OPP (struct output_pixel_processor*) ;
 int dce110_opp_set_clamping (struct dce110_opp*,struct clamping_and_pixel_encoding_params const*) ;
 int set_pixel_encoding (struct dce110_opp*,struct clamping_and_pixel_encoding_params const*) ;

void dce110_opp_program_clamping_and_pixel_encoding(
 struct output_pixel_processor *opp,
 const struct clamping_and_pixel_encoding_params *params)
{
 struct dce110_opp *opp110 = TO_DCE110_OPP(opp);

 dce110_opp_set_clamping(opp110, params);
 set_pixel_encoding(opp110, params);
}
