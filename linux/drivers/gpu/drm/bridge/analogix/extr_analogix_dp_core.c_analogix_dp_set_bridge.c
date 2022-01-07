
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct analogix_dp_device {int dev; int clock; TYPE_1__* plat_data; int phy; int irq; } ;
struct TYPE_4__ {int (* power_off ) (TYPE_1__*) ;int (* power_on_end ) (TYPE_1__*) ;int (* power_on_start ) (TYPE_1__*) ;} ;


 int DRM_ERROR (char*,int) ;
 int analogix_dp_commit (struct analogix_dp_device*) ;
 int analogix_dp_detect_hpd (struct analogix_dp_device*) ;
 int analogix_dp_init_dp (struct analogix_dp_device*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int enable_irq (int ) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;

__attribute__((used)) static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
{
 int ret;

 pm_runtime_get_sync(dp->dev);

 ret = clk_prepare_enable(dp->clock);
 if (ret < 0) {
  DRM_ERROR("Failed to prepare_enable the clock clk [%d]\n", ret);
  goto out_dp_clk_pre;
 }

 if (dp->plat_data->power_on_start)
  dp->plat_data->power_on_start(dp->plat_data);

 phy_power_on(dp->phy);

 ret = analogix_dp_init_dp(dp);
 if (ret)
  goto out_dp_init;






 ret = analogix_dp_detect_hpd(dp);
 if (ret) {
  DRM_ERROR("failed to get hpd single ret = %d\n", ret);
  goto out_dp_init;
 }

 ret = analogix_dp_commit(dp);
 if (ret) {
  DRM_ERROR("dp commit error, ret = %d\n", ret);
  goto out_dp_init;
 }

 if (dp->plat_data->power_on_end)
  dp->plat_data->power_on_end(dp->plat_data);

 enable_irq(dp->irq);
 return 0;

out_dp_init:
 phy_power_off(dp->phy);
 if (dp->plat_data->power_off)
  dp->plat_data->power_off(dp->plat_data);
 clk_disable_unprepare(dp->clock);
out_dp_clk_pre:
 pm_runtime_put_sync(dp->dev);

 return ret;
}
