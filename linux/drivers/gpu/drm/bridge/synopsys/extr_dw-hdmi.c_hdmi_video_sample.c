
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int enc_in_bus_format; } ;
struct dw_hdmi {TYPE_1__ hdmi_data; } ;


 int HDMI_TX_BCBDATA0 ;
 int HDMI_TX_BCBDATA1 ;
 int HDMI_TX_GYDATA0 ;
 int HDMI_TX_GYDATA1 ;
 int HDMI_TX_INSTUFFING ;
 int HDMI_TX_INSTUFFING_BDBDATA_STUFFING_ENABLE ;
 int HDMI_TX_INSTUFFING_GYDATA_STUFFING_ENABLE ;
 int HDMI_TX_INSTUFFING_RCRDATA_STUFFING_ENABLE ;
 int HDMI_TX_INVID0 ;
 int HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_DISABLE ;
 int HDMI_TX_INVID0_VIDEO_MAPPING_MASK ;
 int HDMI_TX_INVID0_VIDEO_MAPPING_OFFSET ;
 int HDMI_TX_RCRDATA0 ;
 int HDMI_TX_RCRDATA1 ;
 int hdmi_writeb (struct dw_hdmi*,int,int ) ;

__attribute__((used)) static void hdmi_video_sample(struct dw_hdmi *hdmi)
{
 int color_format = 0;
 u8 val;

 switch (hdmi->hdmi_data.enc_in_bus_format) {
 case 139:
  color_format = 0x01;
  break;
 case 142:
  color_format = 0x03;
  break;
 case 141:
  color_format = 0x05;
  break;
 case 140:
  color_format = 0x07;
  break;

 case 128:
 case 132:
  color_format = 0x09;
  break;
 case 131:
 case 135:
  color_format = 0x0B;
  break;
 case 130:
 case 134:
  color_format = 0x0D;
  break;
 case 129:
 case 133:
  color_format = 0x0F;
  break;

 case 136:
  color_format = 0x16;
  break;
 case 138:
  color_format = 0x14;
  break;
 case 137:
  color_format = 0x12;
  break;

 default:
  return;
 }

 val = HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_DISABLE |
  ((color_format << HDMI_TX_INVID0_VIDEO_MAPPING_OFFSET) &
  HDMI_TX_INVID0_VIDEO_MAPPING_MASK);
 hdmi_writeb(hdmi, val, HDMI_TX_INVID0);


 val = HDMI_TX_INSTUFFING_BDBDATA_STUFFING_ENABLE |
  HDMI_TX_INSTUFFING_RCRDATA_STUFFING_ENABLE |
  HDMI_TX_INSTUFFING_GYDATA_STUFFING_ENABLE;
 hdmi_writeb(hdmi, val, HDMI_TX_INSTUFFING);
 hdmi_writeb(hdmi, 0x0, HDMI_TX_GYDATA0);
 hdmi_writeb(hdmi, 0x0, HDMI_TX_GYDATA1);
 hdmi_writeb(hdmi, 0x0, HDMI_TX_RCRDATA0);
 hdmi_writeb(hdmi, 0x0, HDMI_TX_RCRDATA1);
 hdmi_writeb(hdmi, 0x0, HDMI_TX_BCBDATA0);
 hdmi_writeb(hdmi, 0x0, HDMI_TX_BCBDATA1);
}
