
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_audio {int dummy; } ;
struct TYPE_3__ {int pixelclock; } ;
struct TYPE_4__ {TYPE_1__ vm; } ;
struct omap_hdmi {int audio_configured; int lock; struct omap_dss_audio audio_config; TYPE_2__ cfg; int wp; int core; scalar_t__ display_enabled; } ;
struct device {int dummy; } ;


 struct omap_hdmi* dev_get_drvdata (struct device*) ;
 int hdmi4_audio_config (int *,int *,struct omap_dss_audio*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdmi_audio_config(struct device *dev,
        struct omap_dss_audio *dss_audio)
{
 struct omap_hdmi *hd = dev_get_drvdata(dev);
 int ret = 0;

 mutex_lock(&hd->lock);

 if (hd->display_enabled) {
  ret = hdmi4_audio_config(&hd->core, &hd->wp, dss_audio,
      hd->cfg.vm.pixelclock);
  if (ret)
   goto out;
 }

 hd->audio_configured = 1;
 hd->audio_config = *dss_audio;
out:
 mutex_unlock(&hd->lock);

 return ret;
}
