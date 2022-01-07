
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;


 int HDMI_IH_I2CMPHY_STAT0 ;
 int HDMI_PHY_I2CM_ADDRESS_ADDR ;
 int HDMI_PHY_I2CM_DATAO_0_ADDR ;
 int HDMI_PHY_I2CM_DATAO_1_ADDR ;
 int HDMI_PHY_I2CM_OPERATION_ADDR ;
 unsigned char HDMI_PHY_I2CM_OPERATION_ADDR_WRITE ;
 int hdmi_phy_wait_i2c_done (struct dw_hdmi*,int) ;
 int hdmi_writeb (struct dw_hdmi*,unsigned char,int ) ;

void dw_hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
      unsigned char addr)
{
 hdmi_writeb(hdmi, 0xFF, HDMI_IH_I2CMPHY_STAT0);
 hdmi_writeb(hdmi, addr, HDMI_PHY_I2CM_ADDRESS_ADDR);
 hdmi_writeb(hdmi, (unsigned char)(data >> 8),
      HDMI_PHY_I2CM_DATAO_1_ADDR);
 hdmi_writeb(hdmi, (unsigned char)(data >> 0),
      HDMI_PHY_I2CM_DATAO_0_ADDR);
 hdmi_writeb(hdmi, HDMI_PHY_I2CM_OPERATION_ADDR_WRITE,
      HDMI_PHY_I2CM_OPERATION_ADDR);
 hdmi_phy_wait_i2c_done(hdmi, 1000);
}
