
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mpc {TYPE_4__* ctx; } ;
struct dcn20_mpc {int dummy; } ;
typedef enum dc_lut_mode { ____Placeholder_dc_lut_mode } dc_lut_mode ;
struct TYPE_8__ {TYPE_2__* dc; } ;
struct TYPE_7__ {int dedcn20_305_wa; } ;
struct TYPE_5__ {scalar_t__ cm_in_bypass; } ;
struct TYPE_6__ {TYPE_3__ work_arounds; TYPE_1__ debug; } ;


 int LUT_BYPASS ;
 int LUT_RAM_A ;
 int * MPCC_OGAM_MODE ;
 int REG_SET (int ,int ,int *,int) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;

void apply_DEDCN20_305_wa(
  struct mpc *mpc,
  int mpcc_id, enum dc_lut_mode current_mode,
  enum dc_lut_mode next_mode)
{
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);

 if (mpc->ctx->dc->debug.cm_in_bypass) {
  REG_SET(MPCC_OGAM_MODE[mpcc_id], 0, MPCC_OGAM_MODE, 0);
  return;
 }

 if (mpc->ctx->dc->work_arounds.dedcn20_305_wa == 0) {

  return;
 }
 if (current_mode == LUT_BYPASS)




  REG_SET(MPCC_OGAM_MODE[mpcc_id], 0, MPCC_OGAM_MODE,
   next_mode == LUT_RAM_A ? 1:2);
}
