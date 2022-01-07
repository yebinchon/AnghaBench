
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tegra_hdmi {int dev; } ;
struct hdmi_vendor_infoframe {int s3d_struct; } ;
typedef scalar_t__ ssize_t ;
typedef int buffer ;


 int HDMI_3D_STRUCTURE_FRAME_PACKING ;
 int dev_err (int ,char*,scalar_t__) ;
 int hdmi_vendor_infoframe_init (struct hdmi_vendor_infoframe*) ;
 scalar_t__ hdmi_vendor_infoframe_pack (struct hdmi_vendor_infoframe*,int *,int) ;
 int tegra_hdmi_write_infopack (struct tegra_hdmi*,int *,scalar_t__) ;

__attribute__((used)) static void tegra_hdmi_setup_stereo_infoframe(struct tegra_hdmi *hdmi)
{
 struct hdmi_vendor_infoframe frame;
 u8 buffer[10];
 ssize_t err;

 hdmi_vendor_infoframe_init(&frame);
 frame.s3d_struct = HDMI_3D_STRUCTURE_FRAME_PACKING;

 err = hdmi_vendor_infoframe_pack(&frame, buffer, sizeof(buffer));
 if (err < 0) {
  dev_err(hdmi->dev, "failed to pack vendor infoframe: %zd\n",
   err);
  return;
 }

 tegra_hdmi_write_infopack(hdmi, buffer, err);
}
