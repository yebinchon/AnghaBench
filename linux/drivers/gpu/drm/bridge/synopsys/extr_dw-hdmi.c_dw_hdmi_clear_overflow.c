
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_hdmi {int version; } ;


 int HDMI_FC_INVIDCONF ;
 int HDMI_MC_SWRSTZ ;
 scalar_t__ HDMI_MC_SWRSTZ_TMDSSWRST_REQ ;
 int hdmi_readb (struct dw_hdmi*,int ) ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;

__attribute__((used)) static void dw_hdmi_clear_overflow(struct dw_hdmi *hdmi)
{
 unsigned int count;
 unsigned int i;
 u8 val;
 switch (hdmi->version) {
 case 0x130a:
  count = 4;
  break;
 case 0x131a:
 case 0x132a:
 case 0x200a:
 case 0x201a:
 case 0x211a:
 case 0x212a:
  count = 1;
  break;
 default:
  return;
 }


 hdmi_writeb(hdmi, (u8)~HDMI_MC_SWRSTZ_TMDSSWRST_REQ, HDMI_MC_SWRSTZ);

 val = hdmi_readb(hdmi, HDMI_FC_INVIDCONF);
 for (i = 0; i < count; i++)
  hdmi_writeb(hdmi, val, HDMI_FC_INVIDCONF);
}
