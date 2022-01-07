
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hdmi {int irq_status; int hpd; int event_received; int wait_event; scalar_t__ drm_dev; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int DRM_INFO (char*) ;
 int HDMI_INT_AUDIO_FIFO_XRUN ;
 int HDMI_INT_DLL_LCK ;
 int HDMI_INT_HOT_PLUG ;
 int HDMI_INT_SW_RST ;
 scalar_t__ HDMI_STA ;
 int HDMI_STA_HOT_PLUG ;
 int IRQ_HANDLED ;
 int drm_helper_hpd_irq_event (scalar_t__) ;
 int readl (scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t hdmi_irq_thread(int irq, void *arg)
{
 struct sti_hdmi *hdmi = arg;


 if (hdmi->irq_status & HDMI_INT_HOT_PLUG) {
  hdmi->hpd = readl(hdmi->regs + HDMI_STA) & HDMI_STA_HOT_PLUG;
  if (hdmi->drm_dev)
   drm_helper_hpd_irq_event(hdmi->drm_dev);
 }




 if (hdmi->irq_status & (HDMI_INT_SW_RST | HDMI_INT_DLL_LCK)) {
  hdmi->event_received = 1;
  wake_up_interruptible(&hdmi->wait_event);
 }


 if (hdmi->irq_status & HDMI_INT_AUDIO_FIFO_XRUN)
  DRM_INFO("Warning: audio FIFO underrun occurs!\n");

 return IRQ_HANDLED;
}
