
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int phy_mask; } ;


 int HDMI_IH_MUTE_PHY_STAT0 ;
 int HDMI_IH_PHY_STAT0 ;
 int HDMI_IH_PHY_STAT0_HPD ;
 int HDMI_IH_PHY_STAT0_RX_SENSE ;
 int HDMI_PHY_HPD ;
 int HDMI_PHY_MASK0 ;
 int HDMI_PHY_POL0 ;
 int HDMI_PHY_RX_SENSE ;
 int hdmi_writeb (struct dw_hdmi*,int,int ) ;

void dw_hdmi_phy_setup_hpd(struct dw_hdmi *hdmi, void *data)
{




 hdmi_writeb(hdmi, HDMI_PHY_HPD | HDMI_PHY_RX_SENSE, HDMI_PHY_POL0);
 hdmi_writeb(hdmi, HDMI_IH_PHY_STAT0_HPD | HDMI_IH_PHY_STAT0_RX_SENSE,
      HDMI_IH_PHY_STAT0);


 hdmi_writeb(hdmi, hdmi->phy_mask, HDMI_PHY_MASK0);


 hdmi_writeb(hdmi, HDMI_IH_PHY_STAT0_HPD | HDMI_IH_PHY_STAT0_RX_SENSE,
      HDMI_IH_PHY_STAT0);
 hdmi_writeb(hdmi, ~(HDMI_IH_PHY_STAT0_HPD | HDMI_IH_PHY_STAT0_RX_SENSE),
      HDMI_IH_MUTE_PHY_STAT0);
}
