
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdmi; } ;
union hdmi_infoframe {TYPE_1__ vendor; } ;
struct inno_hdmi {int connector; } ;
struct drm_display_mode {int dummy; } ;


 int INFOFRAME_VSI ;
 int drm_hdmi_vendor_infoframe_from_display_mode (int *,int *,struct drm_display_mode*) ;
 int inno_hdmi_upload_frame (struct inno_hdmi*,int,union hdmi_infoframe*,int ,int ,int ,int ) ;
 int m_PACKET_VSI_EN ;
 int v_PACKET_VSI_EN (int) ;

__attribute__((used)) static int inno_hdmi_config_video_vsi(struct inno_hdmi *hdmi,
          struct drm_display_mode *mode)
{
 union hdmi_infoframe frame;
 int rc;

 rc = drm_hdmi_vendor_infoframe_from_display_mode(&frame.vendor.hdmi,
        &hdmi->connector,
        mode);

 return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_VSI,
  m_PACKET_VSI_EN, v_PACKET_VSI_EN(0), v_PACKET_VSI_EN(1));
}
