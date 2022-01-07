
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_hdmi {int dummy; } ;


 int HDMI_AUD_HBR_MASK ;
 int HDMI_AUD_INT ;
 int HDMI_AUD_SPDIFINT ;
 int HDMI_A_APIINTMSK ;
 int HDMI_FC_MASK0 ;
 int HDMI_FC_MASK1 ;
 int HDMI_FC_MASK2 ;
 int HDMI_GP_MASK ;
 int HDMI_I2CM_CTLINT ;
 int HDMI_I2CM_INT ;
 int HDMI_IH_MUTE ;
 int HDMI_IH_MUTE_AHBDMAAUD_STAT0 ;
 int HDMI_IH_MUTE_AS_STAT0 ;
 int HDMI_IH_MUTE_CEC_STAT0 ;
 int HDMI_IH_MUTE_FC_STAT0 ;
 int HDMI_IH_MUTE_FC_STAT1 ;
 int HDMI_IH_MUTE_FC_STAT2 ;
 int HDMI_IH_MUTE_I2CMPHY_STAT0 ;
 int HDMI_IH_MUTE_I2CM_STAT0 ;
 int HDMI_IH_MUTE_MUTE_ALL_INTERRUPT ;
 int HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT ;
 int HDMI_IH_MUTE_PHY_STAT0 ;
 int HDMI_IH_MUTE_VP_STAT0 ;
 int HDMI_PHY_I2CM_CTLINT_ADDR ;
 int HDMI_PHY_I2CM_INT_ADDR ;
 int HDMI_PHY_MASK0 ;
 int HDMI_VP_MASK ;
 int hdmi_readb (struct dw_hdmi*,int ) ;
 int hdmi_writeb (struct dw_hdmi*,int,int ) ;

__attribute__((used)) static void initialize_hdmi_ih_mutes(struct dw_hdmi *hdmi)
{
 u8 ih_mute;
 ih_mute = hdmi_readb(hdmi, HDMI_IH_MUTE) |
    HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT |
    HDMI_IH_MUTE_MUTE_ALL_INTERRUPT;

 hdmi_writeb(hdmi, ih_mute, HDMI_IH_MUTE);


 hdmi_writeb(hdmi, 0xff, HDMI_VP_MASK);
 hdmi_writeb(hdmi, 0xff, HDMI_FC_MASK0);
 hdmi_writeb(hdmi, 0xff, HDMI_FC_MASK1);
 hdmi_writeb(hdmi, 0xff, HDMI_FC_MASK2);
 hdmi_writeb(hdmi, 0xff, HDMI_PHY_MASK0);
 hdmi_writeb(hdmi, 0xff, HDMI_PHY_I2CM_INT_ADDR);
 hdmi_writeb(hdmi, 0xff, HDMI_PHY_I2CM_CTLINT_ADDR);
 hdmi_writeb(hdmi, 0xff, HDMI_AUD_INT);
 hdmi_writeb(hdmi, 0xff, HDMI_AUD_SPDIFINT);
 hdmi_writeb(hdmi, 0xff, HDMI_AUD_HBR_MASK);
 hdmi_writeb(hdmi, 0xff, HDMI_GP_MASK);
 hdmi_writeb(hdmi, 0xff, HDMI_A_APIINTMSK);
 hdmi_writeb(hdmi, 0xff, HDMI_I2CM_INT);
 hdmi_writeb(hdmi, 0xff, HDMI_I2CM_CTLINT);


 hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_FC_STAT0);
 hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_FC_STAT1);
 hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_FC_STAT2);
 hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_AS_STAT0);
 hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_PHY_STAT0);
 hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_I2CM_STAT0);
 hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_CEC_STAT0);
 hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_VP_STAT0);
 hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_I2CMPHY_STAT0);
 hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_AHBDMAAUD_STAT0);


 ih_mute &= ~(HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT |
      HDMI_IH_MUTE_MUTE_ALL_INTERRUPT);
 hdmi_writeb(hdmi, ih_mute, HDMI_IH_MUTE);
}
