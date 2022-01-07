
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pixelclock; } ;
struct TYPE_5__ {TYPE_1__ vm; } ;
struct omap_hdmi {int audio_configured; int display_enabled; int lock; int audio_playing_lock; scalar_t__ audio_playing; TYPE_3__* pdev; int (* audio_abort_cb ) (int *) ;TYPE_2__ cfg; int audio_config; int wp; int core; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_6__ {int dev; } ;


 int DSSDBG (char*) ;
 int DSSERR (char*,...) ;
 struct omap_hdmi* dssdev_to_hdmi (struct omap_dss_device*) ;
 int hdmi4_audio_config (int *,int *,int *,int ) ;
 int hdmi_power_on_full (struct omap_hdmi*) ;
 int hdmi_start_audio_stream (struct omap_hdmi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int *) ;

__attribute__((used)) static void hdmi_display_enable(struct omap_dss_device *dssdev)
{
 struct omap_hdmi *hdmi = dssdev_to_hdmi(dssdev);
 unsigned long flags;
 int r;

 DSSDBG("ENTER hdmi_display_enable\n");

 mutex_lock(&hdmi->lock);

 r = hdmi_power_on_full(hdmi);
 if (r) {
  DSSERR("failed to power on device\n");
  goto done;
 }

 if (hdmi->audio_configured) {
  r = hdmi4_audio_config(&hdmi->core, &hdmi->wp,
           &hdmi->audio_config,
           hdmi->cfg.vm.pixelclock);
  if (r) {
   DSSERR("Error restoring audio configuration: %d", r);
   hdmi->audio_abort_cb(&hdmi->pdev->dev);
   hdmi->audio_configured = 0;
  }
 }

 spin_lock_irqsave(&hdmi->audio_playing_lock, flags);
 if (hdmi->audio_configured && hdmi->audio_playing)
  hdmi_start_audio_stream(hdmi);
 hdmi->display_enabled = 1;
 spin_unlock_irqrestore(&hdmi->audio_playing_lock, flags);

done:
 mutex_unlock(&hdmi->lock);
}
