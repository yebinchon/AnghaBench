
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int base; } ;
struct hdmi_wp_data {int dummy; } ;
struct omap_hdmi {TYPE_1__ core; struct hdmi_wp_data wp; } ;
typedef int irqreturn_t ;


 int HDMI_CORE_SYS_INTR4 ;
 int HDMI_IRQ_CORE ;
 int HDMI_IRQ_LINK_CONNECT ;
 int HDMI_IRQ_LINK_DISCONNECT ;
 int HDMI_PHYPWRCMD_LDOON ;
 int HDMI_PHYPWRCMD_OFF ;
 int HDMI_PHYPWRCMD_TXON ;
 int IRQ_HANDLED ;
 int hdmi4_cec_irq (TYPE_1__*) ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_wp_get_irqstatus (struct hdmi_wp_data*) ;
 int hdmi_wp_set_irqstatus (struct hdmi_wp_data*,int) ;
 int hdmi_wp_set_phy_pwr (struct hdmi_wp_data*,int ) ;
 int hdmi_write_reg (int ,int ,int) ;

__attribute__((used)) static irqreturn_t hdmi_irq_handler(int irq, void *data)
{
 struct omap_hdmi *hdmi = data;
 struct hdmi_wp_data *wp = &hdmi->wp;
 u32 irqstatus;

 irqstatus = hdmi_wp_get_irqstatus(wp);
 hdmi_wp_set_irqstatus(wp, irqstatus);

 if ((irqstatus & HDMI_IRQ_LINK_CONNECT) &&
   irqstatus & HDMI_IRQ_LINK_DISCONNECT) {






  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_OFF);

  hdmi_wp_set_irqstatus(wp, HDMI_IRQ_LINK_CONNECT |
    HDMI_IRQ_LINK_DISCONNECT);

  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_LDOON);
 } else if (irqstatus & HDMI_IRQ_LINK_CONNECT) {
  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_TXON);
 } else if (irqstatus & HDMI_IRQ_LINK_DISCONNECT) {
  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_LDOON);
 }
 if (irqstatus & HDMI_IRQ_CORE) {
  u32 intr4 = hdmi_read_reg(hdmi->core.base, HDMI_CORE_SYS_INTR4);

  hdmi_write_reg(hdmi->core.base, HDMI_CORE_SYS_INTR4, intr4);
  if (intr4 & 8)
   hdmi4_cec_irq(&hdmi->core);
 }

 return IRQ_HANDLED;
}
