
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {int display_enabled; int lock; int audio_playing_lock; } ;
struct omap_dss_device {int dummy; } ;


 int DSSDBG (char*) ;
 struct omap_hdmi* dssdev_to_hdmi (struct omap_dss_device*) ;
 int hdmi_power_off_full (struct omap_hdmi*) ;
 int hdmi_stop_audio_stream (struct omap_hdmi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hdmi_display_disable(struct omap_dss_device *dssdev)
{
 struct omap_hdmi *hdmi = dssdev_to_hdmi(dssdev);
 unsigned long flags;

 DSSDBG("Enter hdmi_display_disable\n");

 mutex_lock(&hdmi->lock);

 spin_lock_irqsave(&hdmi->audio_playing_lock, flags);
 hdmi_stop_audio_stream(hdmi);
 hdmi->display_enabled = 0;
 spin_unlock_irqrestore(&hdmi->audio_playing_lock, flags);

 hdmi_power_off_full(hdmi);

 mutex_unlock(&hdmi->lock);
}
