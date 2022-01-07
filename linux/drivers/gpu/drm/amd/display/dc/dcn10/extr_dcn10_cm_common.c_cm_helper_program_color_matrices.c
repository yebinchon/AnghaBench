
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct dc_context {int dummy; } ;
struct color_matrices_reg {scalar_t__ csc_c11_c12; scalar_t__ csc_c33_c34; } ;


 int REG_SET_2 (scalar_t__,int ,int ,int const,int ,int const) ;
 int csc_c11 ;
 int csc_c12 ;

void cm_helper_program_color_matrices(
  struct dc_context *ctx,
  const uint16_t *regval,
  const struct color_matrices_reg *reg)
{
 uint32_t cur_csc_reg;
 unsigned int i = 0;

 for (cur_csc_reg = reg->csc_c11_c12;
   cur_csc_reg <= reg->csc_c33_c34;
   cur_csc_reg++) {

  const uint16_t *regval0 = &(regval[2 * i]);
  const uint16_t *regval1 = &(regval[(2 * i) + 1]);

  REG_SET_2(cur_csc_reg, 0,
    csc_c11, *regval0,
    csc_c12, *regval1);

  i++;
 }

}
