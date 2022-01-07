
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_dsi_phy {TYPE_1__* pdev; int ahb_clk; } ;
struct TYPE_2__ {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int pm_runtime_put_autosuspend (int *) ;

__attribute__((used)) static void dsi_phy_disable_resource(struct msm_dsi_phy *phy)
{
 clk_disable_unprepare(phy->ahb_clk);
 pm_runtime_put_autosuspend(&phy->pdev->dev);
}
