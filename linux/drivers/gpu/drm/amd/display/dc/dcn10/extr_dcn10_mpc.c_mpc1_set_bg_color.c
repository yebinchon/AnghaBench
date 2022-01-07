
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tg_color {int color_r_cr; int color_g_y; int color_b_cb; } ;
struct mpc {int dummy; } ;
struct dcn10_mpc {int dummy; } ;


 int * MPCC_BG_B_CB ;
 int * MPCC_BG_G_Y ;
 int * MPCC_BG_R_CR ;
 int REG_SET (int ,int ,int *,int) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;

void mpc1_set_bg_color(struct mpc *mpc,
  struct tg_color *bg_color,
  int mpcc_id)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);





 uint32_t bg_r_cr = bg_color->color_r_cr << 2;
 uint32_t bg_g_y = bg_color->color_g_y << 2;
 uint32_t bg_b_cb = bg_color->color_b_cb << 2;

 REG_SET(MPCC_BG_R_CR[mpcc_id], 0,
   MPCC_BG_R_CR, bg_r_cr);
 REG_SET(MPCC_BG_G_Y[mpcc_id], 0,
   MPCC_BG_G_Y, bg_g_y);
 REG_SET(MPCC_BG_B_CB[mpcc_id], 0,
   MPCC_BG_B_CB, bg_b_cb);
}
