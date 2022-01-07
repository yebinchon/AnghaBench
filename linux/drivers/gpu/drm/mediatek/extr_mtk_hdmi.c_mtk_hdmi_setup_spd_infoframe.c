
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_hdmi {int dev; } ;
struct hdmi_spd_infoframe {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int buffer ;


 int dev_err (int ,char*,scalar_t__) ;
 scalar_t__ hdmi_spd_infoframe_init (struct hdmi_spd_infoframe*,char const*,char const*) ;
 scalar_t__ hdmi_spd_infoframe_pack (struct hdmi_spd_infoframe*,int *,int) ;
 int mtk_hdmi_hw_send_info_frame (struct mtk_hdmi*,int *,int) ;

__attribute__((used)) static int mtk_hdmi_setup_spd_infoframe(struct mtk_hdmi *hdmi,
     const char *vendor,
     const char *product)
{
 struct hdmi_spd_infoframe frame;
 u8 buffer[29];
 ssize_t err;

 err = hdmi_spd_infoframe_init(&frame, vendor, product);
 if (err < 0) {
  dev_err(hdmi->dev, "Failed to initialize SPD infoframe: %zd\n",
   err);
  return err;
 }

 err = hdmi_spd_infoframe_pack(&frame, buffer, sizeof(buffer));
 if (err < 0) {
  dev_err(hdmi->dev, "Failed to pack SDP infoframe: %zd\n", err);
  return err;
 }

 mtk_hdmi_hw_send_info_frame(hdmi, buffer, sizeof(buffer));
 return 0;
}
