
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cdn_dp_device {int lock; int active; } ;


 int ENODEV ;
 int cdn_dp_audio_mute (struct cdn_dp_device*,int) ;
 struct cdn_dp_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cdn_dp_audio_digital_mute(struct device *dev, void *data,
         bool enable)
{
 struct cdn_dp_device *dp = dev_get_drvdata(dev);
 int ret;

 mutex_lock(&dp->lock);
 if (!dp->active) {
  ret = -ENODEV;
  goto out;
 }

 ret = cdn_dp_audio_mute(dp, enable);

out:
 mutex_unlock(&dp->lock);
 return ret;
}
