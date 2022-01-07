
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_hdmi {int dev; int conn; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_display_mode {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int buffer ;


 int dev_err (int ,char*,scalar_t__) ;
 scalar_t__ drm_hdmi_avi_infoframe_from_display_mode (struct hdmi_avi_infoframe*,int *,struct drm_display_mode*) ;
 scalar_t__ hdmi_avi_infoframe_pack (struct hdmi_avi_infoframe*,int *,int) ;
 int mtk_hdmi_hw_send_info_frame (struct mtk_hdmi*,int *,int) ;

__attribute__((used)) static int mtk_hdmi_setup_avi_infoframe(struct mtk_hdmi *hdmi,
     struct drm_display_mode *mode)
{
 struct hdmi_avi_infoframe frame;
 u8 buffer[17];
 ssize_t err;

 err = drm_hdmi_avi_infoframe_from_display_mode(&frame,
             &hdmi->conn, mode);
 if (err < 0) {
  dev_err(hdmi->dev,
   "Failed to get AVI infoframe from mode: %zd\n", err);
  return err;
 }

 err = hdmi_avi_infoframe_pack(&frame, buffer, sizeof(buffer));
 if (err < 0) {
  dev_err(hdmi->dev, "Failed to pack AVI infoframe: %zd\n", err);
  return err;
 }

 mtk_hdmi_hw_send_info_frame(hdmi, buffer, sizeof(buffer));
 return 0;
}
