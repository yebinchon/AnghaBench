
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int (* restore_state ) (struct msm_dsi_pll*) ;int state_saved; } ;


 int stub1 (struct msm_dsi_pll*) ;

int msm_dsi_pll_restore_state(struct msm_dsi_pll *pll)
{
 int ret;

 if (pll->restore_state && pll->state_saved) {
  ret = pll->restore_state(pll);
  if (ret)
   return ret;

  pll->state_saved = 0;
 }

 return 0;
}
