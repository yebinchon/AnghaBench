
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_hdmi {int dummy; } ;


 int HDMI_PHY_CONF0 ;
 int HDMI_PHY_CONF0_ENTMDS_MASK ;
 int HDMI_PHY_CONF0_ENTMDS_OFFSET ;
 int hdmi_mask_writeb (struct dw_hdmi*,int ,int ,int ,int ) ;

__attribute__((used)) static void dw_hdmi_phy_enable_tmds(struct dw_hdmi *hdmi, u8 enable)
{
 hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
    HDMI_PHY_CONF0_ENTMDS_OFFSET,
    HDMI_PHY_CONF0_ENTMDS_MASK);
}
