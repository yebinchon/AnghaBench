
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_ctrl {int vdda_vreg; int lvl_vreg; } ;


 int VDDA_UA_OFF_LOAD ;
 int regulator_disable (int ) ;
 int regulator_set_load (int ,int ) ;

__attribute__((used)) static void edp_regulator_disable(struct edp_ctrl *ctrl)
{
 regulator_disable(ctrl->lvl_vreg);
 regulator_disable(ctrl->vdda_vreg);
 regulator_set_load(ctrl->vdda_vreg, VDDA_UA_OFF_LOAD);
}
