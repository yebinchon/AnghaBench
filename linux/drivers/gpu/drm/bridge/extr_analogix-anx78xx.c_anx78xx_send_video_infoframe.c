
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdmi_avi_infoframe {int length; } ;
struct anx78xx {int * map; } ;
typedef int buffer ;


 int DRM_ERROR (char*,int) ;
 int HDMI_AVI_INFOFRAME_SIZE ;
 int HDMI_INFOFRAME_HEADER_SIZE ;
 size_t I2C_IDX_TX_P0 ;
 size_t I2C_IDX_TX_P2 ;
 int SP_AVI_IF_EN ;
 int SP_AVI_IF_UD ;
 int SP_INFOFRAME_AVI_DB1_REG ;
 int SP_PACKET_SEND_CTRL_REG ;
 int anx78xx_clear_bits (int ,int ,int ) ;
 int anx78xx_set_bits (int ,int ,int ) ;
 int hdmi_avi_infoframe_pack (struct hdmi_avi_infoframe*,int *,int) ;
 int regmap_bulk_write (int ,int ,int *,int ) ;

__attribute__((used)) static int anx78xx_send_video_infoframe(struct anx78xx *anx78xx,
     struct hdmi_avi_infoframe *frame)
{
 u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
 int err;

 err = hdmi_avi_infoframe_pack(frame, buffer, sizeof(buffer));
 if (err < 0) {
  DRM_ERROR("Failed to pack AVI infoframe: %d\n", err);
  return err;
 }

 err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
     SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_EN);
 if (err)
  return err;

 err = regmap_bulk_write(anx78xx->map[I2C_IDX_TX_P2],
    SP_INFOFRAME_AVI_DB1_REG, buffer,
    frame->length);
 if (err)
  return err;

 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
          SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_UD);
 if (err)
  return err;

 err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
          SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_EN);
 if (err)
  return err;

 return 0;
}
