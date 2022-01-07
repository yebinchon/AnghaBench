
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct analogix_dp_device {TYPE_1__* plat_data; int dev; } ;
struct TYPE_2__ {scalar_t__ panel; } ;


 int DRM_ERROR (char*) ;
 int analogix_dp_config_video (struct analogix_dp_device*) ;
 scalar_t__ analogix_dp_detect_sink_psr (struct analogix_dp_device*) ;
 int analogix_dp_enable_scramble (struct analogix_dp_device*,int) ;
 int analogix_dp_enable_sink_psr (struct analogix_dp_device*) ;
 int analogix_dp_fast_link_train_detection (struct analogix_dp_device*) ;
 int analogix_dp_init_video (struct analogix_dp_device*) ;
 int analogix_dp_train_link (struct analogix_dp_device*) ;
 int dev_err (int ,char*,...) ;
 scalar_t__ drm_panel_disable (scalar_t__) ;
 int drm_panel_enable (scalar_t__) ;

__attribute__((used)) static int analogix_dp_commit(struct analogix_dp_device *dp)
{
 int ret;


 if (dp->plat_data->panel) {
  if (drm_panel_disable(dp->plat_data->panel))
   DRM_ERROR("failed to disable the panel\n");
 }

 ret = analogix_dp_train_link(dp);
 if (ret) {
  dev_err(dp->dev, "unable to do link train, ret=%d\n", ret);
  return ret;
 }

 ret = analogix_dp_enable_scramble(dp, 1);
 if (ret < 0) {
  dev_err(dp->dev, "can not enable scramble\n");
  return ret;
 }

 analogix_dp_init_video(dp);
 ret = analogix_dp_config_video(dp);
 if (ret) {
  dev_err(dp->dev, "unable to config video\n");
  return ret;
 }


 if (dp->plat_data->panel) {
  ret = drm_panel_enable(dp->plat_data->panel);
  if (ret) {
   DRM_ERROR("failed to enable the panel\n");
   return ret;
  }
 }


 ret = analogix_dp_fast_link_train_detection(dp);
 if (ret)
  return ret;

 if (analogix_dp_detect_sink_psr(dp)) {
  ret = analogix_dp_enable_sink_psr(dp);
  if (ret)
   return ret;
 }

 return ret;
}
