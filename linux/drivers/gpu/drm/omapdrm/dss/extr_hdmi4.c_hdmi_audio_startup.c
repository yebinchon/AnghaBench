
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {void (* audio_abort_cb ) (struct device*) ;int lock; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 struct omap_hdmi* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdmi_audio_startup(struct device *dev,
         void (*abort_cb)(struct device *dev))
{
 struct omap_hdmi *hd = dev_get_drvdata(dev);

 mutex_lock(&hd->lock);

 WARN_ON(hd->audio_abort_cb != ((void*)0));

 hd->audio_abort_cb = abort_cb;

 mutex_unlock(&hd->lock);

 return 0;
}
