
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_hdmi {int dummy; } ;


 int HDMI_PHY_I2CM_SLAVE_ADDR ;
 int hdmi_phy_test_clear (struct dw_hdmi*,int) ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;

void dw_hdmi_phy_i2c_set_addr(struct dw_hdmi *hdmi, u8 address)
{
 hdmi_phy_test_clear(hdmi, 1);
 hdmi_writeb(hdmi, address, HDMI_PHY_I2CM_SLAVE_ADDR);
 hdmi_phy_test_clear(hdmi, 0);
}
