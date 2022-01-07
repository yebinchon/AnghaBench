
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_mdss {int dummy; } ;
struct mdp5_mdss {scalar_t__ vsync_clk; scalar_t__ axi_clk; scalar_t__ ahb_clk; } ;


 int DBG (char*) ;
 int clk_prepare_enable (scalar_t__) ;
 struct mdp5_mdss* to_mdp5_mdss (struct msm_mdss*) ;

__attribute__((used)) static int mdp5_mdss_enable(struct msm_mdss *mdss)
{
 struct mdp5_mdss *mdp5_mdss = to_mdp5_mdss(mdss);
 DBG("");

 clk_prepare_enable(mdp5_mdss->ahb_clk);
 if (mdp5_mdss->axi_clk)
  clk_prepare_enable(mdp5_mdss->axi_clk);
 if (mdp5_mdss->vsync_clk)
  clk_prepare_enable(mdp5_mdss->vsync_clk);

 return 0;
}
