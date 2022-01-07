
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_device {int core_clk; int pclk; int dev; } ;


 int clk_disable_unprepare (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void cdn_dp_clk_disable(struct cdn_dp_device *dp)
{
 pm_runtime_put_sync(dp->dev);
 clk_disable_unprepare(dp->pclk);
 clk_disable_unprepare(dp->core_clk);
}
