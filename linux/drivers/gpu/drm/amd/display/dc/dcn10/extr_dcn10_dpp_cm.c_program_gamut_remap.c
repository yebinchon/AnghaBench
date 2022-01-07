
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int ctx; } ;
struct dcn10_dpp {TYPE_5__ base; TYPE_4__* tf_mask; TYPE_2__* tf_shift; } ;
struct TYPE_8__ {int csc_c12; int csc_c11; } ;
struct TYPE_6__ {int csc_c12; int csc_c11; } ;
struct color_matrices_reg {void* csc_c33_c34; void* csc_c11_c12; TYPE_3__ masks; TYPE_1__ shifts; } ;
typedef enum gamut_remap_select { ____Placeholder_gamut_remap_select } gamut_remap_select ;
struct TYPE_9__ {int CM_GAMUT_REMAP_C12; int CM_GAMUT_REMAP_C11; } ;
struct TYPE_7__ {int CM_GAMUT_REMAP_C12; int CM_GAMUT_REMAP_C11; } ;


 int CM_COMA_C11_C12 ;
 int CM_COMA_C33_C34 ;
 int CM_COMB_C11_C12 ;
 int CM_COMB_C33_C34 ;
 int CM_GAMUT_REMAP_C11_C12 ;
 int CM_GAMUT_REMAP_C33_C34 ;
 int CM_GAMUT_REMAP_CONTROL ;
 int CM_GAMUT_REMAP_MODE ;
 int GAMUT_REMAP_BYPASS ;



 void* REG (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int cm_helper_program_color_matrices (int ,int const*,struct color_matrices_reg*) ;

__attribute__((used)) static void program_gamut_remap(
  struct dcn10_dpp *dpp,
  const uint16_t *regval,
  enum gamut_remap_select select)
{
 uint16_t selection = 0;
 struct color_matrices_reg gam_regs;

 if (regval == ((void*)0) || select == GAMUT_REMAP_BYPASS) {
  REG_SET(CM_GAMUT_REMAP_CONTROL, 0,
    CM_GAMUT_REMAP_MODE, 0);
  return;
 }
 switch (select) {
 case 130:
  selection = 1;
  break;
 case 129:
  selection = 2;
  break;
 case 128:
  selection = 3;
  break;
 default:
  break;
 }

 gam_regs.shifts.csc_c11 = dpp->tf_shift->CM_GAMUT_REMAP_C11;
 gam_regs.masks.csc_c11 = dpp->tf_mask->CM_GAMUT_REMAP_C11;
 gam_regs.shifts.csc_c12 = dpp->tf_shift->CM_GAMUT_REMAP_C12;
 gam_regs.masks.csc_c12 = dpp->tf_mask->CM_GAMUT_REMAP_C12;


 if (select == 130) {
  gam_regs.csc_c11_c12 = REG(CM_GAMUT_REMAP_C11_C12);
  gam_regs.csc_c33_c34 = REG(CM_GAMUT_REMAP_C33_C34);

  cm_helper_program_color_matrices(
    dpp->base.ctx,
    regval,
    &gam_regs);

 } else if (select == 129) {

  gam_regs.csc_c11_c12 = REG(CM_COMA_C11_C12);
  gam_regs.csc_c33_c34 = REG(CM_COMA_C33_C34);

  cm_helper_program_color_matrices(
    dpp->base.ctx,
    regval,
    &gam_regs);

 } else {

  gam_regs.csc_c11_c12 = REG(CM_COMB_C11_C12);
  gam_regs.csc_c33_c34 = REG(CM_COMB_C33_C34);

  cm_helper_program_color_matrices(
    dpp->base.ctx,
    regval,
    &gam_regs);
 }

 REG_SET(
   CM_GAMUT_REMAP_CONTROL, 0,
   CM_GAMUT_REMAP_MODE, selection);

}
