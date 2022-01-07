
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_device {int fw_loaded; int lock; int dev; int fw; } ;


 int CDN_DP_FIRMWARE ;
 int CDN_FW_TIMEOUT_MS ;
 int DRM_DEV_ERROR (int ,char*,...) ;
 int ENOENT ;
 int ETIMEDOUT ;
 int WARN_ON (int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (unsigned long) ;
 int mutex_is_locked (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_firmware (int *,int ,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int cdn_dp_request_firmware(struct cdn_dp_device *dp)
{
 int ret;
 unsigned long timeout = jiffies + msecs_to_jiffies(CDN_FW_TIMEOUT_MS);
 unsigned long sleep = 1000;

 WARN_ON(!mutex_is_locked(&dp->lock));

 if (dp->fw_loaded)
  return 0;


 mutex_unlock(&dp->lock);

 while (time_before(jiffies, timeout)) {
  ret = request_firmware(&dp->fw, CDN_DP_FIRMWARE, dp->dev);
  if (ret == -ENOENT) {
   msleep(sleep);
   sleep *= 2;
   continue;
  } else if (ret) {
   DRM_DEV_ERROR(dp->dev,
          "failed to request firmware: %d\n", ret);
   goto out;
  }

  dp->fw_loaded = 1;
  ret = 0;
  goto out;
 }

 DRM_DEV_ERROR(dp->dev, "Timed out trying to load firmware\n");
 ret = -ETIMEDOUT;
out:
 mutex_lock(&dp->lock);
 return ret;
}
