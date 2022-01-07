
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dw_hdmi {scalar_t__ i2c; } ;
typedef int irqreturn_t ;


 int HDMI_IH_MUTE_PHY_STAT0 ;
 int HDMI_IH_PHY_STAT0 ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int dw_hdmi_i2c_irq (struct dw_hdmi*) ;
 scalar_t__ hdmi_readb (struct dw_hdmi*,int ) ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;

__attribute__((used)) static irqreturn_t dw_hdmi_hardirq(int irq, void *dev_id)
{
 struct dw_hdmi *hdmi = dev_id;
 u8 intr_stat;
 irqreturn_t ret = IRQ_NONE;

 if (hdmi->i2c)
  ret = dw_hdmi_i2c_irq(hdmi);

 intr_stat = hdmi_readb(hdmi, HDMI_IH_PHY_STAT0);
 if (intr_stat) {
  hdmi_writeb(hdmi, ~0, HDMI_IH_MUTE_PHY_STAT0);
  return IRQ_WAKE_THREAD;
 }

 return ret;
}
