
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
struct mpc {int dummy; } ;
struct TYPE_10__ {int ctx; } ;
struct dcn20_mpc {TYPE_5__ base; TYPE_4__* mpc_mask; TYPE_2__* mpc_shift; } ;
struct TYPE_8__ {int csc_c12; int csc_c11; } ;
struct TYPE_6__ {int csc_c12; int csc_c11; } ;
struct color_matrices_reg {void* csc_c33_c34; void* csc_c11_c12; TYPE_3__ masks; TYPE_1__ shifts; } ;
typedef enum mpc_output_csc_mode { ____Placeholder_mpc_output_csc_mode } mpc_output_csc_mode ;
struct TYPE_9__ {int MPC_OCSC_C12_A; int MPC_OCSC_C11_A; } ;
struct TYPE_7__ {int MPC_OCSC_C12_A; int MPC_OCSC_C11_A; } ;


 int BREAK_TO_DEBUGGER () ;
 int * CSC_C11_C12_A ;
 int * CSC_C11_C12_B ;
 int * CSC_C33_C34_A ;
 int * CSC_C33_C34_B ;
 int * CSC_MODE ;
 int MPC_OCSC_MODE ;
 int MPC_OUTPUT_CSC_COEF_A ;
 int MPC_OUTPUT_CSC_DISABLE ;
 void* REG (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;
 int cm_helper_program_color_matrices (int ,int const*,struct color_matrices_reg*) ;

void mpc2_set_output_csc(
  struct mpc *mpc,
  int opp_id,
  const uint16_t *regval,
  enum mpc_output_csc_mode ocsc_mode)
{
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);
 struct color_matrices_reg ocsc_regs;

 REG_SET(CSC_MODE[opp_id], 0, MPC_OCSC_MODE, ocsc_mode);

 if (ocsc_mode == MPC_OUTPUT_CSC_DISABLE)
  return;

 if (regval == ((void*)0)) {
  BREAK_TO_DEBUGGER();
  return;
 }

 ocsc_regs.shifts.csc_c11 = mpc20->mpc_shift->MPC_OCSC_C11_A;
 ocsc_regs.masks.csc_c11 = mpc20->mpc_mask->MPC_OCSC_C11_A;
 ocsc_regs.shifts.csc_c12 = mpc20->mpc_shift->MPC_OCSC_C12_A;
 ocsc_regs.masks.csc_c12 = mpc20->mpc_mask->MPC_OCSC_C12_A;

 if (ocsc_mode == MPC_OUTPUT_CSC_COEF_A) {
  ocsc_regs.csc_c11_c12 = REG(CSC_C11_C12_A[opp_id]);
  ocsc_regs.csc_c33_c34 = REG(CSC_C33_C34_A[opp_id]);
 } else {
  ocsc_regs.csc_c11_c12 = REG(CSC_C11_C12_B[opp_id]);
  ocsc_regs.csc_c33_c34 = REG(CSC_C33_C34_B[opp_id]);
 }
 cm_helper_program_color_matrices(
   mpc20->base.ctx,
   regval,
   &ocsc_regs);
}
