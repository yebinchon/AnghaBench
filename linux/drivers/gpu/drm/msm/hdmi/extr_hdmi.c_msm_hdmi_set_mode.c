
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdmi {int reg_lock; int hdmi_mode; } ;


 int DBG (char*,char*,int ) ;
 int HDMI_CTRL_ENABLE ;
 int HDMI_CTRL_HDMI ;
 int REG_HDMI_CTRL ;
 int hdmi_write (struct hdmi*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void msm_hdmi_set_mode(struct hdmi *hdmi, bool power_on)
{
 uint32_t ctrl = 0;
 unsigned long flags;

 spin_lock_irqsave(&hdmi->reg_lock, flags);
 if (power_on) {
  ctrl |= HDMI_CTRL_ENABLE;
  if (!hdmi->hdmi_mode) {
   ctrl |= HDMI_CTRL_HDMI;
   hdmi_write(hdmi, REG_HDMI_CTRL, ctrl);
   ctrl &= ~HDMI_CTRL_HDMI;
  } else {
   ctrl |= HDMI_CTRL_HDMI;
  }
 } else {
  ctrl = HDMI_CTRL_HDMI;
 }

 hdmi_write(hdmi, REG_HDMI_CTRL, ctrl);
 spin_unlock_irqrestore(&hdmi->reg_lock, flags);
 DBG("HDMI Core: %s, HDMI_CTRL=0x%08x",
   power_on ? "Enable" : "Disable", ctrl);
}
