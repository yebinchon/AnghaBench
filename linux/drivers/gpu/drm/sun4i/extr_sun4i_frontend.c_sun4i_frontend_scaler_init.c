
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_frontend {int regs; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ has_coef_rdy; scalar_t__ has_coef_access_ctrl; } ;


 int SUN4I_FRONTEND_CH0_HORZCOEF0_REG (int) ;
 int SUN4I_FRONTEND_CH0_HORZCOEF1_REG (int) ;
 int SUN4I_FRONTEND_CH0_VERTCOEF_REG (int) ;
 int SUN4I_FRONTEND_CH1_HORZCOEF0_REG (int) ;
 int SUN4I_FRONTEND_CH1_HORZCOEF1_REG (int) ;
 int SUN4I_FRONTEND_CH1_VERTCOEF_REG (int) ;
 int SUN4I_FRONTEND_FRM_CTRL_COEF_ACCESS_CTRL ;
 int SUN4I_FRONTEND_FRM_CTRL_COEF_RDY ;
 int SUN4I_FRONTEND_FRM_CTRL_REG ;
 int regmap_write (int ,int ,int ) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int * sun4i_frontend_horz_coef ;
 int * sun4i_frontend_vert_coef ;

__attribute__((used)) static void sun4i_frontend_scaler_init(struct sun4i_frontend *frontend)
{
 int i;

 if (frontend->data->has_coef_access_ctrl)
  regmap_write_bits(frontend->regs, SUN4I_FRONTEND_FRM_CTRL_REG,
      SUN4I_FRONTEND_FRM_CTRL_COEF_ACCESS_CTRL,
      SUN4I_FRONTEND_FRM_CTRL_COEF_ACCESS_CTRL);

 for (i = 0; i < 32; i++) {
  regmap_write(frontend->regs, SUN4I_FRONTEND_CH0_HORZCOEF0_REG(i),
        sun4i_frontend_horz_coef[2 * i]);
  regmap_write(frontend->regs, SUN4I_FRONTEND_CH1_HORZCOEF0_REG(i),
        sun4i_frontend_horz_coef[2 * i]);
  regmap_write(frontend->regs, SUN4I_FRONTEND_CH0_HORZCOEF1_REG(i),
        sun4i_frontend_horz_coef[2 * i + 1]);
  regmap_write(frontend->regs, SUN4I_FRONTEND_CH1_HORZCOEF1_REG(i),
        sun4i_frontend_horz_coef[2 * i + 1]);
  regmap_write(frontend->regs, SUN4I_FRONTEND_CH0_VERTCOEF_REG(i),
        sun4i_frontend_vert_coef[i]);
  regmap_write(frontend->regs, SUN4I_FRONTEND_CH1_VERTCOEF_REG(i),
        sun4i_frontend_vert_coef[i]);
 }

 if (frontend->data->has_coef_rdy)
  regmap_write_bits(frontend->regs,
      SUN4I_FRONTEND_FRM_CTRL_REG,
      SUN4I_FRONTEND_FRM_CTRL_COEF_RDY,
      SUN4I_FRONTEND_FRM_CTRL_COEF_RDY);
}
