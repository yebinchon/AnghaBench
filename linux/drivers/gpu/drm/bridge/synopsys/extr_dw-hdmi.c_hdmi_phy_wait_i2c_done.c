
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_hdmi {int dummy; } ;


 int HDMI_IH_I2CMPHY_STAT0 ;
 int hdmi_readb (struct dw_hdmi*,int ) ;
 int hdmi_writeb (struct dw_hdmi*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static bool hdmi_phy_wait_i2c_done(struct dw_hdmi *hdmi, int msec)
{
 u32 val;

 while ((val = hdmi_readb(hdmi, HDMI_IH_I2CMPHY_STAT0) & 0x3) == 0) {
  if (msec-- == 0)
   return 0;
  udelay(1000);
 }
 hdmi_writeb(hdmi, val, HDMI_IH_I2CMPHY_STAT0);

 return 1;
}
