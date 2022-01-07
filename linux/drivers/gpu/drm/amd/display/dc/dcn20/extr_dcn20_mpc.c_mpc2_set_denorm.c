
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int dummy; } ;
struct dcn20_mpc {int dummy; } ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;
 int * DENORM_CONTROL ;
 int MPC_OUT_DENORM_MODE ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;

void mpc2_set_denorm(
  struct mpc *mpc,
  int opp_id,
  enum dc_color_depth output_depth)
{
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);
 int denorm_mode = 0;

 switch (output_depth) {
 case 130:
  denorm_mode = 1;
  break;
 case 129:
  denorm_mode = 2;
  break;
 case 128:
  denorm_mode = 3;
  break;
 case 135:
  denorm_mode = 4;
  break;
 case 134:
  denorm_mode = 5;
  break;
 case 133:
  denorm_mode = 6;
  break;
 case 132:
 case 131:
 default:

  break;
 }

 REG_UPDATE(DENORM_CONTROL[opp_id],
   MPC_OUT_DENORM_MODE, denorm_mode);
}
