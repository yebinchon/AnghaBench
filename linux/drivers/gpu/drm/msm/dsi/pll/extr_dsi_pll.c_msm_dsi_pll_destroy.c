
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int (* destroy ) (struct msm_dsi_pll*) ;} ;


 int stub1 (struct msm_dsi_pll*) ;

void msm_dsi_pll_destroy(struct msm_dsi_pll *pll)
{
 if (pll->destroy)
  pll->destroy(pll);
}
