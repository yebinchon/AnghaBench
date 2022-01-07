
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int audio_enable; int audio_lock; int (* disable_audio ) (struct dw_hdmi*) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct dw_hdmi*) ;

void dw_hdmi_audio_disable(struct dw_hdmi *hdmi)
{
 unsigned long flags;

 spin_lock_irqsave(&hdmi->audio_lock, flags);
 hdmi->audio_enable = 0;
 if (hdmi->disable_audio)
  hdmi->disable_audio(hdmi);
 spin_unlock_irqrestore(&hdmi->audio_lock, flags);
}
