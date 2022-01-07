
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_frontend {int regs; } ;


 int SUN4I_FRONTEND_FRM_CTRL_FRM_START ;
 int SUN4I_FRONTEND_FRM_CTRL_REG ;
 int regmap_write_bits (int ,int ,int ,int ) ;

int sun4i_frontend_enable(struct sun4i_frontend *frontend)
{
 regmap_write_bits(frontend->regs, SUN4I_FRONTEND_FRM_CTRL_REG,
     SUN4I_FRONTEND_FRM_CTRL_FRM_START,
     SUN4I_FRONTEND_FRM_CTRL_FRM_START);

 return 0;
}
