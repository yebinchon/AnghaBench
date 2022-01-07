
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct cdn_dp_device {int lock; TYPE_1__* dev; } ;
struct TYPE_3__ {int of_node; } ;


 int CONTROL_VIDEO_IDLE ;
 int CONTROL_VIDEO_VALID ;
 int DP_SEL_VOP_LIT ;
 int DRM_DEV_DEBUG_KMS (TYPE_1__*,char*,char*) ;
 int DRM_DEV_ERROR (TYPE_1__*,char*,int) ;
 int GRF_SOC_CON9 ;
 int cdn_dp_check_link_status (struct cdn_dp_device*) ;
 int cdn_dp_config_video (struct cdn_dp_device*) ;
 int cdn_dp_enable (struct cdn_dp_device*) ;
 int cdn_dp_grf_write (struct cdn_dp_device*,int ,int) ;
 int cdn_dp_set_video_status (struct cdn_dp_device*,int ) ;
 int cdn_dp_train_link (struct cdn_dp_device*) ;
 int drm_of_encoder_active_endpoint_id (int ,struct drm_encoder*) ;
 struct cdn_dp_device* encoder_to_dp (struct drm_encoder*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cdn_dp_encoder_enable(struct drm_encoder *encoder)
{
 struct cdn_dp_device *dp = encoder_to_dp(encoder);
 int ret, val;

 ret = drm_of_encoder_active_endpoint_id(dp->dev->of_node, encoder);
 if (ret < 0) {
  DRM_DEV_ERROR(dp->dev, "Could not get vop id, %d", ret);
  return;
 }

 DRM_DEV_DEBUG_KMS(dp->dev, "vop %s output to cdn-dp\n",
     (ret) ? "LIT" : "BIG");
 if (ret)
  val = DP_SEL_VOP_LIT | (DP_SEL_VOP_LIT << 16);
 else
  val = DP_SEL_VOP_LIT << 16;

 ret = cdn_dp_grf_write(dp, GRF_SOC_CON9, val);
 if (ret)
  return;

 mutex_lock(&dp->lock);

 ret = cdn_dp_enable(dp);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Failed to enable encoder %d\n",
         ret);
  goto out;
 }
 if (!cdn_dp_check_link_status(dp)) {
  ret = cdn_dp_train_link(dp);
  if (ret) {
   DRM_DEV_ERROR(dp->dev, "Failed link train %d\n", ret);
   goto out;
  }
 }

 ret = cdn_dp_set_video_status(dp, CONTROL_VIDEO_IDLE);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Failed to idle video %d\n", ret);
  goto out;
 }

 ret = cdn_dp_config_video(dp);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Failed to config video %d\n", ret);
  goto out;
 }

 ret = cdn_dp_set_video_status(dp, CONTROL_VIDEO_VALID);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Failed to valid video %d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&dp->lock);
}
