
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sn_bridge {int dev; scalar_t__ refclk; } ;
struct drm_bridge {int dummy; } ;


 struct ti_sn_bridge* bridge_to_ti_sn_bridge (struct drm_bridge*) ;
 int clk_disable_unprepare (scalar_t__) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void ti_sn_bridge_post_disable(struct drm_bridge *bridge)
{
 struct ti_sn_bridge *pdata = bridge_to_ti_sn_bridge(bridge);

 if (pdata->refclk)
  clk_disable_unprepare(pdata->refclk);

 pm_runtime_put_sync(pdata->dev);
}
