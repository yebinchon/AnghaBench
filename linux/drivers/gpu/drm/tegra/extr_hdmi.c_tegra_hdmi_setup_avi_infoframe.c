
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int connector; } ;
struct tegra_hdmi {int dev; TYPE_1__ output; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_display_mode {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int buffer ;


 int dev_err (int ,char*,scalar_t__) ;
 scalar_t__ drm_hdmi_avi_infoframe_from_display_mode (struct hdmi_avi_infoframe*,int *,struct drm_display_mode*) ;
 scalar_t__ hdmi_avi_infoframe_pack (struct hdmi_avi_infoframe*,int *,int) ;
 int tegra_hdmi_write_infopack (struct tegra_hdmi*,int *,scalar_t__) ;

__attribute__((used)) static void tegra_hdmi_setup_avi_infoframe(struct tegra_hdmi *hdmi,
        struct drm_display_mode *mode)
{
 struct hdmi_avi_infoframe frame;
 u8 buffer[17];
 ssize_t err;

 err = drm_hdmi_avi_infoframe_from_display_mode(&frame,
             &hdmi->output.connector, mode);
 if (err < 0) {
  dev_err(hdmi->dev, "failed to setup AVI infoframe: %zd\n", err);
  return;
 }

 err = hdmi_avi_infoframe_pack(&frame, buffer, sizeof(buffer));
 if (err < 0) {
  dev_err(hdmi->dev, "failed to pack AVI infoframe: %zd\n", err);
  return;
 }

 tegra_hdmi_write_infopack(hdmi, buffer, err);
}
