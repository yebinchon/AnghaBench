
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_dsi_host {int * bus_clks; TYPE_1__* cfg_hnd; } ;
struct msm_dsi_config {int num_bus_clks; } ;
struct TYPE_2__ {struct msm_dsi_config* cfg; } ;


 int DBG (char*) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void dsi_bus_clk_disable(struct msm_dsi_host *msm_host)
{
 const struct msm_dsi_config *cfg = msm_host->cfg_hnd->cfg;
 int i;

 DBG("");

 for (i = cfg->num_bus_clks - 1; i >= 0; i--)
  clk_disable_unprepare(msm_host->bus_clks[i]);
}
