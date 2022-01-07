
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int dummy; } ;
struct clk {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int msm_dsi_pll_get_clk_provider(struct msm_dsi_pll *pll,
 struct clk **byte_clk_provider, struct clk **pixel_clk_provider)
{
 return -ENODEV;
}
