
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;


 int HDMI_PHY_TST0 ;
 int HDMI_PHY_TST0_TSTCLR_MASK ;
 unsigned char HDMI_PHY_TST0_TSTCLR_OFFSET ;
 int hdmi_modb (struct dw_hdmi*,unsigned char,int ,int ) ;

__attribute__((used)) static inline void hdmi_phy_test_clear(struct dw_hdmi *hdmi,
           unsigned char bit)
{
 hdmi_modb(hdmi, bit << HDMI_PHY_TST0_TSTCLR_OFFSET,
    HDMI_PHY_TST0_TSTCLR_MASK, HDMI_PHY_TST0);
}
