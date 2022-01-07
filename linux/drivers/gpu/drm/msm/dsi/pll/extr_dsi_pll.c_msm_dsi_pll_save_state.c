
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int state_saved; int (* save_state ) (struct msm_dsi_pll*) ;} ;


 int stub1 (struct msm_dsi_pll*) ;

void msm_dsi_pll_save_state(struct msm_dsi_pll *pll)
{
 if (pll->save_state) {
  pll->save_state(pll);
  pll->state_saved = 1;
 }
}
