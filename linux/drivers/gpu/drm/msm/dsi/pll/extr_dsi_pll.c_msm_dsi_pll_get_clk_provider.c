
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int (* get_provider ) (struct msm_dsi_pll*,struct clk**,struct clk**) ;} ;
struct clk {int dummy; } ;


 int EINVAL ;
 int stub1 (struct msm_dsi_pll*,struct clk**,struct clk**) ;

int msm_dsi_pll_get_clk_provider(struct msm_dsi_pll *pll,
 struct clk **byte_clk_provider, struct clk **pixel_clk_provider)
{
 if (pll->get_provider)
  return pll->get_provider(pll,
     byte_clk_provider,
     pixel_clk_provider);

 return -EINVAL;
}
