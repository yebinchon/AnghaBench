
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mtk_hdmi {int dev; } ;
typedef enum hdmi_infoframe_type { ____Placeholder_hdmi_infoframe_type } hdmi_infoframe_type ;


 int CTRL_AUDIO_EN ;
 int CTRL_AVI_EN ;
 int CTRL_SPD_EN ;
 int GRL_ACP_ISRC_CTRL ;
 int GRL_CTRL ;
 int GRL_IFM_PORT ;
 int GRL_INFOFRM_LNG ;
 int GRL_INFOFRM_TYPE ;
 int GRL_INFOFRM_VER ;




 int VS_EN ;
 int dev_dbg (int ,char*,int,int,int,int) ;
 int dev_err (int ,char*,int) ;
 int mtk_hdmi_clear_bits (struct mtk_hdmi*,int ,int) ;
 int mtk_hdmi_set_bits (struct mtk_hdmi*,int ,int) ;
 int mtk_hdmi_write (struct mtk_hdmi*,int ,int) ;

__attribute__((used)) static void mtk_hdmi_hw_send_info_frame(struct mtk_hdmi *hdmi, u8 *buffer,
     u8 len)
{
 u32 ctrl_reg = GRL_CTRL;
 int i;
 u8 *frame_data;
 enum hdmi_infoframe_type frame_type;
 u8 frame_ver;
 u8 frame_len;
 u8 checksum;
 int ctrl_frame_en = 0;

 frame_type = *buffer;
 buffer += 1;
 frame_ver = *buffer;
 buffer += 1;
 frame_len = *buffer;
 buffer += 1;
 checksum = *buffer;
 buffer += 1;
 frame_data = buffer;

 dev_dbg(hdmi->dev,
  "frame_type:0x%x,frame_ver:0x%x,frame_len:0x%x,checksum:0x%x\n",
  frame_type, frame_ver, frame_len, checksum);

 switch (frame_type) {
 case 130:
  ctrl_frame_en = CTRL_AVI_EN;
  ctrl_reg = GRL_CTRL;
  break;
 case 129:
  ctrl_frame_en = CTRL_SPD_EN;
  ctrl_reg = GRL_CTRL;
  break;
 case 131:
  ctrl_frame_en = CTRL_AUDIO_EN;
  ctrl_reg = GRL_CTRL;
  break;
 case 128:
  ctrl_frame_en = VS_EN;
  ctrl_reg = GRL_ACP_ISRC_CTRL;
  break;
 default:
  dev_err(hdmi->dev, "Unknown infoframe type %d\n", frame_type);
  return;
 }
 mtk_hdmi_clear_bits(hdmi, ctrl_reg, ctrl_frame_en);
 mtk_hdmi_write(hdmi, GRL_INFOFRM_TYPE, frame_type);
 mtk_hdmi_write(hdmi, GRL_INFOFRM_VER, frame_ver);
 mtk_hdmi_write(hdmi, GRL_INFOFRM_LNG, frame_len);

 mtk_hdmi_write(hdmi, GRL_IFM_PORT, checksum);
 for (i = 0; i < frame_len; i++)
  mtk_hdmi_write(hdmi, GRL_IFM_PORT, frame_data[i]);

 mtk_hdmi_set_bits(hdmi, ctrl_reg, ctrl_frame_en);
}
