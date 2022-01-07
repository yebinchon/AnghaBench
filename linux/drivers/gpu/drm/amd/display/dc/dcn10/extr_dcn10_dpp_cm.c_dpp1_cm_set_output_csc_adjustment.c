
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;


 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;
 int dpp1_cm_program_color_matrix (struct dcn10_dpp*,int const*) ;

void dpp1_cm_set_output_csc_adjustment(
  struct dpp *dpp_base,
  const uint16_t *regval)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 dpp1_cm_program_color_matrix(dpp, regval);
}
