
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_hdmi {int dev; int conn; } ;
struct hdmi_vendor_infoframe {int dummy; } ;
struct drm_display_mode {int dummy; } ;
typedef int ssize_t ;
typedef int buffer ;


 int dev_err (int ,char*,int) ;
 int drm_hdmi_vendor_infoframe_from_display_mode (struct hdmi_vendor_infoframe*,int *,struct drm_display_mode*) ;
 int hdmi_vendor_infoframe_pack (struct hdmi_vendor_infoframe*,int *,int) ;
 int mtk_hdmi_hw_send_info_frame (struct mtk_hdmi*,int *,int) ;

__attribute__((used)) static int mtk_hdmi_setup_vendor_specific_infoframe(struct mtk_hdmi *hdmi,
      struct drm_display_mode *mode)
{
 struct hdmi_vendor_infoframe frame;
 u8 buffer[10];
 ssize_t err;

 err = drm_hdmi_vendor_infoframe_from_display_mode(&frame,
         &hdmi->conn, mode);
 if (err) {
  dev_err(hdmi->dev,
   "Failed to get vendor infoframe from mode: %zd\n", err);
  return err;
 }

 err = hdmi_vendor_infoframe_pack(&frame, buffer, sizeof(buffer));
 if (err < 0) {
  dev_err(hdmi->dev, "Failed to pack vendor infoframe: %zd\n",
   err);
  return err;
 }

 mtk_hdmi_hw_send_info_frame(hdmi, buffer, sizeof(buffer));
 return 0;
}
