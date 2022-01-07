
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_dp_device {int pclk; int dev; } ;
struct analogix_dp_plat_data {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int rockchip_dp_pre_init (struct rockchip_dp_device*) ;
 struct rockchip_dp_device* to_dp (struct analogix_dp_plat_data*) ;

__attribute__((used)) static int rockchip_dp_poweron_start(struct analogix_dp_plat_data *plat_data)
{
 struct rockchip_dp_device *dp = to_dp(plat_data);
 int ret;

 ret = clk_prepare_enable(dp->pclk);
 if (ret < 0) {
  DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
  return ret;
 }

 ret = rockchip_dp_pre_init(dp);
 if (ret < 0) {
  DRM_DEV_ERROR(dp->dev, "failed to dp pre init %d\n", ret);
  clk_disable_unprepare(dp->pclk);
  return ret;
 }

 return ret;
}
