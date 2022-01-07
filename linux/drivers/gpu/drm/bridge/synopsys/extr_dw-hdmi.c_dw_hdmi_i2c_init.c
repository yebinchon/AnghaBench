
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;


 int HDMI_I2CM_CTLINT ;
 int HDMI_I2CM_CTLINT_ARB_POL ;
 int HDMI_I2CM_CTLINT_NAC_POL ;
 int HDMI_I2CM_DIV ;
 int HDMI_I2CM_INT ;
 int HDMI_I2CM_INT_DONE_POL ;
 int HDMI_I2CM_SOFTRSTZ ;
 int HDMI_IH_I2CM_STAT0 ;
 int HDMI_IH_I2CM_STAT0_DONE ;
 int HDMI_IH_I2CM_STAT0_ERROR ;
 int HDMI_IH_MUTE_I2CM_STAT0 ;
 int HDMI_PHY_I2CM_CTLINT_ADDR ;
 int HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_POL ;
 int HDMI_PHY_I2CM_CTLINT_ADDR_NAC_POL ;
 int HDMI_PHY_I2CM_INT_ADDR ;
 int HDMI_PHY_I2CM_INT_ADDR_DONE_POL ;
 int hdmi_writeb (struct dw_hdmi*,int,int ) ;

__attribute__((used)) static void dw_hdmi_i2c_init(struct dw_hdmi *hdmi)
{
 hdmi_writeb(hdmi, HDMI_PHY_I2CM_INT_ADDR_DONE_POL,
      HDMI_PHY_I2CM_INT_ADDR);

 hdmi_writeb(hdmi, HDMI_PHY_I2CM_CTLINT_ADDR_NAC_POL |
      HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_POL,
      HDMI_PHY_I2CM_CTLINT_ADDR);


 hdmi_writeb(hdmi, 0x00, HDMI_I2CM_SOFTRSTZ);


 hdmi_writeb(hdmi, 0x00, HDMI_I2CM_DIV);


 hdmi_writeb(hdmi, HDMI_I2CM_INT_DONE_POL, HDMI_I2CM_INT);
 hdmi_writeb(hdmi, HDMI_I2CM_CTLINT_NAC_POL | HDMI_I2CM_CTLINT_ARB_POL,
      HDMI_I2CM_CTLINT);


 hdmi_writeb(hdmi, HDMI_IH_I2CM_STAT0_ERROR | HDMI_IH_I2CM_STAT0_DONE,
      HDMI_IH_I2CM_STAT0);


 hdmi_writeb(hdmi, HDMI_IH_I2CM_STAT0_ERROR | HDMI_IH_I2CM_STAT0_DONE,
      HDMI_IH_MUTE_I2CM_STAT0);
}
