
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_hdmi {int phy_mask; } ;


 int HDMI_PHY_MASK0 ;
 int HDMI_PHY_RX_SENSE ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;

void dw_hdmi_phy_update_hpd(struct dw_hdmi *hdmi, void *data,
       bool force, bool disabled, bool rxsense)
{
 u8 old_mask = hdmi->phy_mask;

 if (force || disabled || !rxsense)
  hdmi->phy_mask |= HDMI_PHY_RX_SENSE;
 else
  hdmi->phy_mask &= ~HDMI_PHY_RX_SENSE;

 if (old_mask != hdmi->phy_mask)
  hdmi_writeb(hdmi, hdmi->phy_mask, HDMI_PHY_MASK0);
}
