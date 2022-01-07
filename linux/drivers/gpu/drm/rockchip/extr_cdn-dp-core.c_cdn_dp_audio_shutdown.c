
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int format; } ;
struct cdn_dp_device {int lock; TYPE_1__ audio_info; int active; } ;


 int AFMT_UNUSED ;
 int cdn_dp_audio_stop (struct cdn_dp_device*,TYPE_1__*) ;
 struct cdn_dp_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cdn_dp_audio_shutdown(struct device *dev, void *data)
{
 struct cdn_dp_device *dp = dev_get_drvdata(dev);
 int ret;

 mutex_lock(&dp->lock);
 if (!dp->active)
  goto out;

 ret = cdn_dp_audio_stop(dp, &dp->audio_info);
 if (!ret)
  dp->audio_info.format = AFMT_UNUSED;
out:
 mutex_unlock(&dp->lock);
}
