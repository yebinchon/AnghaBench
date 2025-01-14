
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int get_modes; int power_off; int power_on_start; int dev_type; TYPE_2__* encoder; } ;
struct rockchip_dp_device {TYPE_2__ encoder; int adp; TYPE_3__ plat_data; struct drm_device* drm_dev; struct rockchip_dp_chip_data const* data; } ;
struct rockchip_dp_chip_data {int chip_type; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int (* destroy ) (TYPE_2__*) ;} ;


 int DRM_ERROR (char*) ;
 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int analogix_dp_bind (struct device*,struct drm_device*,TYPE_3__*) ;
 struct rockchip_dp_device* dev_get_drvdata (struct device*) ;
 struct rockchip_dp_chip_data* of_device_get_match_data (struct device*) ;
 int rockchip_dp_drm_create_encoder (struct rockchip_dp_device*) ;
 int rockchip_dp_get_modes ;
 int rockchip_dp_powerdown ;
 int rockchip_dp_poweron_start ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int rockchip_dp_bind(struct device *dev, struct device *master,
       void *data)
{
 struct rockchip_dp_device *dp = dev_get_drvdata(dev);
 const struct rockchip_dp_chip_data *dp_data;
 struct drm_device *drm_dev = data;
 int ret;

 dp_data = of_device_get_match_data(dev);
 if (!dp_data)
  return -ENODEV;

 dp->data = dp_data;
 dp->drm_dev = drm_dev;

 ret = rockchip_dp_drm_create_encoder(dp);
 if (ret) {
  DRM_ERROR("failed to create drm encoder\n");
  return ret;
 }

 dp->plat_data.encoder = &dp->encoder;

 dp->plat_data.dev_type = dp->data->chip_type;
 dp->plat_data.power_on_start = rockchip_dp_poweron_start;
 dp->plat_data.power_off = rockchip_dp_powerdown;
 dp->plat_data.get_modes = rockchip_dp_get_modes;

 dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
 if (IS_ERR(dp->adp)) {
  ret = PTR_ERR(dp->adp);
  goto err_cleanup_encoder;
 }

 return 0;
err_cleanup_encoder:
 dp->encoder.funcs->destroy(&dp->encoder);
 return ret;
}
