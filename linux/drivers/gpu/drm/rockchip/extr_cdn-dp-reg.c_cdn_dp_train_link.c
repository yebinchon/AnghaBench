
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_lanes; int rate; } ;
struct cdn_dp_device {TYPE_1__ link; int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int ,int ) ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int cdn_dp_get_training_status (struct cdn_dp_device*) ;
 int cdn_dp_training_start (struct cdn_dp_device*) ;

int cdn_dp_train_link(struct cdn_dp_device *dp)
{
 int ret;

 ret = cdn_dp_training_start(dp);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Failed to start training %d\n", ret);
  return ret;
 }

 ret = cdn_dp_get_training_status(dp);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Failed to get training stat %d\n", ret);
  return ret;
 }

 DRM_DEV_DEBUG_KMS(dp->dev, "rate:0x%x, lanes:%d\n", dp->link.rate,
     dp->link.num_lanes);
 return ret;
}
