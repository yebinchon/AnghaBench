
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rk3066_hdmi {TYPE_1__* i2c; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int stat; int cmpltn; } ;


 int HDMI_INTR_EDID_MASK ;
 int HDMI_INTR_HOTPLUG ;
 int HDMI_INTR_MSENS ;
 int HDMI_INTR_STATUS1 ;
 int HDMI_SYS_CTRL ;
 scalar_t__ HDMI_SYS_POWER_MODE_A ;
 int HDMI_SYS_POWER_MODE_B ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int complete (int *) ;
 int hdmi_readb (struct rk3066_hdmi*,int ) ;
 int hdmi_writeb (struct rk3066_hdmi*,int ,int) ;
 scalar_t__ rk3066_hdmi_get_power_mode (struct rk3066_hdmi*) ;

__attribute__((used)) static irqreturn_t rk3066_hdmi_hardirq(int irq, void *dev_id)
{
 struct rk3066_hdmi *hdmi = dev_id;
 irqreturn_t ret = IRQ_NONE;
 u8 interrupt;

 if (rk3066_hdmi_get_power_mode(hdmi) == HDMI_SYS_POWER_MODE_A)
  hdmi_writeb(hdmi, HDMI_SYS_CTRL, HDMI_SYS_POWER_MODE_B);

 interrupt = hdmi_readb(hdmi, HDMI_INTR_STATUS1);
 if (interrupt)
  hdmi_writeb(hdmi, HDMI_INTR_STATUS1, interrupt);

 if (interrupt & HDMI_INTR_EDID_MASK) {
  hdmi->i2c->stat = interrupt;
  complete(&hdmi->i2c->cmpltn);
 }

 if (interrupt & (HDMI_INTR_HOTPLUG | HDMI_INTR_MSENS))
  ret = IRQ_WAKE_THREAD;

 return ret;
}
