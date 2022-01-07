
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct cdn_dp_device {int event_work; int connected; int lock; int dev; scalar_t__ active; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 scalar_t__ cdn_dp_connected_port (struct cdn_dp_device*) ;
 int cdn_dp_disable (struct cdn_dp_device*) ;
 struct cdn_dp_device* encoder_to_dp (struct drm_encoder*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void cdn_dp_encoder_disable(struct drm_encoder *encoder)
{
 struct cdn_dp_device *dp = encoder_to_dp(encoder);
 int ret;

 mutex_lock(&dp->lock);
 if (dp->active) {
  ret = cdn_dp_disable(dp);
  if (ret) {
   DRM_DEV_ERROR(dp->dev, "Failed to disable encoder %d\n",
          ret);
  }
 }
 mutex_unlock(&dp->lock);
 if (!dp->connected && cdn_dp_connected_port(dp))
  schedule_work(&dp->event_work);
}
