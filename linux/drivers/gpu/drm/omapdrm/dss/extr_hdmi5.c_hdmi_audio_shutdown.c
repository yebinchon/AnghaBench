
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {int audio_configured; int audio_playing; int lock; int * audio_abort_cb; } ;
struct device {int dummy; } ;


 struct omap_hdmi* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdmi_audio_shutdown(struct device *dev)
{
 struct omap_hdmi *hd = dev_get_drvdata(dev);

 mutex_lock(&hd->lock);
 hd->audio_abort_cb = ((void*)0);
 hd->audio_configured = 0;
 hd->audio_playing = 0;
 mutex_unlock(&hd->lock);

 return 0;
}
