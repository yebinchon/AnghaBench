
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;


 int BREAK_TO_DEBUGGER () ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;
 int dpp1_cm_program_color_matrix (struct dcn10_dpp*,int const*) ;
 int * find_color_matrix (int,int*) ;

void dpp1_cm_set_output_csc_default(
  struct dpp *dpp_base,
  enum dc_color_space colorspace)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);
 const uint16_t *regval = ((void*)0);
 int arr_size;

 regval = find_color_matrix(colorspace, &arr_size);
 if (regval == ((void*)0)) {
  BREAK_TO_DEBUGGER();
  return;
 }

 dpp1_cm_program_color_matrix(dpp, regval);
}
