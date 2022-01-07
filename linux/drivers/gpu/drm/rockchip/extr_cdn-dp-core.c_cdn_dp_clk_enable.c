
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_device {int pclk; int core_clk; int dev; int apb_rst; int dptx_rst; int core_rst; } ;


 int DRM_DEV_ERROR (int ,char*,...) ;
 int EINVAL ;
 int cdn_dp_clock_reset (struct cdn_dp_device*) ;
 int cdn_dp_set_fw_clk (struct cdn_dp_device*,unsigned long) ;
 int clk_disable_unprepare (int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int cdn_dp_clk_enable(struct cdn_dp_device *dp)
{
 int ret;
 unsigned long rate;

 ret = clk_prepare_enable(dp->pclk);
 if (ret < 0) {
  DRM_DEV_ERROR(dp->dev, "cannot enable dp pclk %d\n", ret);
  goto err_pclk;
 }

 ret = clk_prepare_enable(dp->core_clk);
 if (ret < 0) {
  DRM_DEV_ERROR(dp->dev, "cannot enable core_clk %d\n", ret);
  goto err_core_clk;
 }

 ret = pm_runtime_get_sync(dp->dev);
 if (ret < 0) {
  DRM_DEV_ERROR(dp->dev, "cannot get pm runtime %d\n", ret);
  goto err_pm_runtime_get;
 }

 reset_control_assert(dp->core_rst);
 reset_control_assert(dp->dptx_rst);
 reset_control_assert(dp->apb_rst);
 reset_control_deassert(dp->core_rst);
 reset_control_deassert(dp->dptx_rst);
 reset_control_deassert(dp->apb_rst);

 rate = clk_get_rate(dp->core_clk);
 if (!rate) {
  DRM_DEV_ERROR(dp->dev, "get clk rate failed\n");
  ret = -EINVAL;
  goto err_set_rate;
 }

 cdn_dp_set_fw_clk(dp, rate);
 cdn_dp_clock_reset(dp);

 return 0;

err_set_rate:
 pm_runtime_put(dp->dev);
err_pm_runtime_get:
 clk_disable_unprepare(dp->core_clk);
err_core_clk:
 clk_disable_unprepare(dp->pclk);
err_pclk:
 return ret;
}
