
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zx_hdmi {int dummy; } ;
typedef int irqreturn_t ;


 int INTR1_MONITOR_DETECT ;
 int INTR1_STAT ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int L1_INTR_STAT ;
 int L1_INTR_STAT_INTR1 ;
 int hdmi_readb (struct zx_hdmi*,int ) ;
 int hdmi_writeb (struct zx_hdmi*,int ,int) ;

__attribute__((used)) static irqreturn_t zx_hdmi_irq_handler(int irq, void *dev_id)
{
 struct zx_hdmi *hdmi = dev_id;
 u8 lstat;

 lstat = hdmi_readb(hdmi, L1_INTR_STAT);


 if (lstat & L1_INTR_STAT_INTR1) {
  u8 stat;

  stat = hdmi_readb(hdmi, INTR1_STAT);
  hdmi_writeb(hdmi, INTR1_STAT, stat);

  if (stat & INTR1_MONITOR_DETECT)
   return IRQ_WAKE_THREAD;
 }

 return IRQ_NONE;
}
