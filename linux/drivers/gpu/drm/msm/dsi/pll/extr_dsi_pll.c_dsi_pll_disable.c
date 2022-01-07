
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int pll_on; int (* disable_seq ) (struct msm_dsi_pll*) ;} ;


 int stub1 (struct msm_dsi_pll*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dsi_pll_disable(struct msm_dsi_pll *pll)
{
 if (unlikely(!pll->pll_on))
  return;

 pll->disable_seq(pll);

 pll->pll_on = 0;
}
