
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_hdmi {int dummy; } ;


 int HDMI_PHY_CONF0 ;
 int HDMI_PHY_CONF0_GEN2_PDDQ_MASK ;
 int HDMI_PHY_CONF0_GEN2_PDDQ_OFFSET ;
 int hdmi_mask_writeb (struct dw_hdmi*,int ,int ,int ,int ) ;

void dw_hdmi_phy_gen2_pddq(struct dw_hdmi *hdmi, u8 enable)
{
 hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
    HDMI_PHY_CONF0_GEN2_PDDQ_OFFSET,
    HDMI_PHY_CONF0_GEN2_PDDQ_MASK);
}
