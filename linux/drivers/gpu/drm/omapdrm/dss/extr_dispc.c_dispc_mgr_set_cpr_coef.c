
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_dss_cpr_coefs {int bb; int bg; int br; int gb; int gg; int gr; int rb; int rg; int rr; } ;
struct dispc_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_CPR_COEF_B (int) ;
 int DISPC_CPR_COEF_G (int) ;
 int DISPC_CPR_COEF_R (int) ;
 int FLD_VAL (int ,int,int) ;
 int dispc_write_reg (struct dispc_device*,int ,int) ;
 int dss_mgr_is_lcd (int) ;

__attribute__((used)) static void dispc_mgr_set_cpr_coef(struct dispc_device *dispc,
       enum omap_channel channel,
       const struct omap_dss_cpr_coefs *coefs)
{
 u32 coef_r, coef_g, coef_b;

 if (!dss_mgr_is_lcd(channel))
  return;

 coef_r = FLD_VAL(coefs->rr, 31, 22) | FLD_VAL(coefs->rg, 20, 11) |
  FLD_VAL(coefs->rb, 9, 0);
 coef_g = FLD_VAL(coefs->gr, 31, 22) | FLD_VAL(coefs->gg, 20, 11) |
  FLD_VAL(coefs->gb, 9, 0);
 coef_b = FLD_VAL(coefs->br, 31, 22) | FLD_VAL(coefs->bg, 20, 11) |
  FLD_VAL(coefs->bb, 9, 0);

 dispc_write_reg(dispc, DISPC_CPR_COEF_R(channel), coef_r);
 dispc_write_reg(dispc, DISPC_CPR_COEF_G(channel), coef_g);
 dispc_write_reg(dispc, DISPC_CPR_COEF_B(channel), coef_b);
}
