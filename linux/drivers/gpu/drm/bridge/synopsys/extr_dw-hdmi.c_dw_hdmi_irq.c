
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ dev; } ;
struct dw_hdmi {TYPE_1__ bridge; int dev; int cec_notifier_mutex; int cec_notifier; } ;
typedef int irqreturn_t ;


 int HDMI_IH_MUTE_PHY_STAT0 ;
 int HDMI_IH_PHY_STAT0 ;
 int HDMI_IH_PHY_STAT0_HPD ;
 int HDMI_IH_PHY_STAT0_RX_SENSE ;
 int HDMI_IH_PHY_STAT0_RX_SENSE0 ;
 int HDMI_IH_PHY_STAT0_RX_SENSE1 ;
 int HDMI_IH_PHY_STAT0_RX_SENSE2 ;
 int HDMI_IH_PHY_STAT0_RX_SENSE3 ;
 int HDMI_PHY_HPD ;
 int HDMI_PHY_POL0 ;
 int HDMI_PHY_RX_SENSE ;
 int HDMI_PHY_RX_SENSE0 ;
 int HDMI_PHY_RX_SENSE1 ;
 int HDMI_PHY_RX_SENSE2 ;
 int HDMI_PHY_RX_SENSE3 ;
 int HDMI_PHY_STAT0 ;
 int IRQ_HANDLED ;
 int cec_notifier_phys_addr_invalidate (int ) ;
 int dev_dbg (int ,char*,char*) ;
 int drm_helper_hpd_irq_event (scalar_t__) ;
 int dw_hdmi_setup_rx_sense (struct dw_hdmi*,int,int) ;
 int hdmi_modb (struct dw_hdmi*,int,int,int ) ;
 int hdmi_readb (struct dw_hdmi*,int ) ;
 int hdmi_writeb (struct dw_hdmi*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
{
 struct dw_hdmi *hdmi = dev_id;
 u8 intr_stat, phy_int_pol, phy_pol_mask, phy_stat;

 intr_stat = hdmi_readb(hdmi, HDMI_IH_PHY_STAT0);
 phy_int_pol = hdmi_readb(hdmi, HDMI_PHY_POL0);
 phy_stat = hdmi_readb(hdmi, HDMI_PHY_STAT0);

 phy_pol_mask = 0;
 if (intr_stat & HDMI_IH_PHY_STAT0_HPD)
  phy_pol_mask |= HDMI_PHY_HPD;
 if (intr_stat & HDMI_IH_PHY_STAT0_RX_SENSE0)
  phy_pol_mask |= HDMI_PHY_RX_SENSE0;
 if (intr_stat & HDMI_IH_PHY_STAT0_RX_SENSE1)
  phy_pol_mask |= HDMI_PHY_RX_SENSE1;
 if (intr_stat & HDMI_IH_PHY_STAT0_RX_SENSE2)
  phy_pol_mask |= HDMI_PHY_RX_SENSE2;
 if (intr_stat & HDMI_IH_PHY_STAT0_RX_SENSE3)
  phy_pol_mask |= HDMI_PHY_RX_SENSE3;

 if (phy_pol_mask)
  hdmi_modb(hdmi, ~phy_int_pol, phy_pol_mask, HDMI_PHY_POL0);
 if (intr_stat &
     (HDMI_IH_PHY_STAT0_RX_SENSE | HDMI_IH_PHY_STAT0_HPD)) {
  dw_hdmi_setup_rx_sense(hdmi,
           phy_stat & HDMI_PHY_HPD,
           phy_stat & HDMI_PHY_RX_SENSE);

  if ((phy_stat & (HDMI_PHY_RX_SENSE | HDMI_PHY_HPD)) == 0) {
   mutex_lock(&hdmi->cec_notifier_mutex);
   cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
   mutex_unlock(&hdmi->cec_notifier_mutex);
  }
 }

 if (intr_stat & HDMI_IH_PHY_STAT0_HPD) {
  dev_dbg(hdmi->dev, "EVENT=%s\n",
   phy_int_pol & HDMI_PHY_HPD ? "plugin" : "plugout");
  if (hdmi->bridge.dev)
   drm_helper_hpd_irq_event(hdmi->bridge.dev);
 }

 hdmi_writeb(hdmi, intr_stat, HDMI_IH_PHY_STAT0);
 hdmi_writeb(hdmi, ~(HDMI_IH_PHY_STAT0_HPD | HDMI_IH_PHY_STAT0_RX_SENSE),
      HDMI_IH_MUTE_PHY_STAT0);

 return IRQ_HANDLED;
}
