
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_device {int grf_clk; int dev; int grf; } ;


 int DRM_DEV_ERROR (int ,char*,...) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int cdn_dp_grf_write(struct cdn_dp_device *dp,
       unsigned int reg, unsigned int val)
{
 int ret;

 ret = clk_prepare_enable(dp->grf_clk);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Failed to prepare_enable grf clock\n");
  return ret;
 }

 ret = regmap_write(dp->grf, reg, val);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Could not write to GRF: %d\n", ret);
  return ret;
 }

 clk_disable_unprepare(dp->grf_clk);

 return 0;
}
