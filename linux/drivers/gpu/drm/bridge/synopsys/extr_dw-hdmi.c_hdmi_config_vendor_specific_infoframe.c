
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdmi_vendor_infoframe {scalar_t__ s3d_struct; } ;
struct dw_hdmi {int dev; int connector; } ;
struct drm_display_mode {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int buffer ;


 scalar_t__ HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF ;
 int HDMI_FC_DATAUTO0 ;
 int HDMI_FC_DATAUTO0_VSD_MASK ;
 int HDMI_FC_DATAUTO0_VSD_OFFSET ;
 int HDMI_FC_DATAUTO1 ;
 int HDMI_FC_DATAUTO2 ;
 int HDMI_FC_VSDIEEEID0 ;
 int HDMI_FC_VSDIEEEID1 ;
 int HDMI_FC_VSDIEEEID2 ;
 int HDMI_FC_VSDPAYLOAD0 ;
 int HDMI_FC_VSDPAYLOAD1 ;
 int HDMI_FC_VSDPAYLOAD2 ;
 int HDMI_FC_VSDSIZE ;
 int dev_err (int ,char*,scalar_t__) ;
 scalar_t__ drm_hdmi_vendor_infoframe_from_display_mode (struct hdmi_vendor_infoframe*,int *,struct drm_display_mode*) ;
 int hdmi_mask_writeb (struct dw_hdmi*,int,int ,int ,int ) ;
 scalar_t__ hdmi_vendor_infoframe_pack (struct hdmi_vendor_infoframe*,int*,int) ;
 int hdmi_writeb (struct dw_hdmi*,int,int ) ;

__attribute__((used)) static void hdmi_config_vendor_specific_infoframe(struct dw_hdmi *hdmi,
       struct drm_display_mode *mode)
{
 struct hdmi_vendor_infoframe frame;
 u8 buffer[10];
 ssize_t err;

 err = drm_hdmi_vendor_infoframe_from_display_mode(&frame,
         &hdmi->connector,
         mode);
 if (err < 0)






  return;

 err = hdmi_vendor_infoframe_pack(&frame, buffer, sizeof(buffer));
 if (err < 0) {
  dev_err(hdmi->dev, "Failed to pack vendor infoframe: %zd\n",
   err);
  return;
 }
 hdmi_mask_writeb(hdmi, 0, HDMI_FC_DATAUTO0, HDMI_FC_DATAUTO0_VSD_OFFSET,
   HDMI_FC_DATAUTO0_VSD_MASK);


 hdmi_writeb(hdmi, buffer[2], HDMI_FC_VSDSIZE);


 hdmi_writeb(hdmi, buffer[4], HDMI_FC_VSDIEEEID0);
 hdmi_writeb(hdmi, buffer[5], HDMI_FC_VSDIEEEID1);
 hdmi_writeb(hdmi, buffer[6], HDMI_FC_VSDIEEEID2);


 hdmi_writeb(hdmi, buffer[7], HDMI_FC_VSDPAYLOAD0);
 hdmi_writeb(hdmi, buffer[8], HDMI_FC_VSDPAYLOAD1);

 if (frame.s3d_struct >= HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF)
  hdmi_writeb(hdmi, buffer[9], HDMI_FC_VSDPAYLOAD2);


 hdmi_writeb(hdmi, 1, HDMI_FC_DATAUTO1);


 hdmi_writeb(hdmi, 0x11, HDMI_FC_DATAUTO2);


 hdmi_mask_writeb(hdmi, 1, HDMI_FC_DATAUTO0, HDMI_FC_DATAUTO0_VSD_OFFSET,
   HDMI_FC_DATAUTO0_VSD_MASK);
}
