
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union hdmi_infoframe {int avi; } ;
typedef int u8 ;
typedef int u32 ;
struct hdmi {TYPE_3__* pdev; int connector; TYPE_1__* encoder; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {TYPE_2__* state; } ;
typedef int buffer ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct drm_display_mode adjusted_mode; } ;
struct TYPE_4__ {struct drm_crtc* crtc; } ;


 int AVI ;
 int AVI_IFRAME_LINE_NUMBER ;
 int DRM_DEV_ERROR (int *,char*) ;
 int HDMI_INFOFRAME_CTRL0_AVI_CONT ;
 int HDMI_INFOFRAME_CTRL0_AVI_SEND ;
 int HDMI_INFOFRAME_CTRL1_AVI_INFO_LINE (int ) ;
 int HDMI_INFOFRAME_CTRL1_AVI_INFO_LINE__MASK ;
 int HDMI_INFOFRAME_SIZE (int ) ;
 int REG_HDMI_AVI_INFO (int) ;
 int REG_HDMI_INFOFRAME_CTRL0 ;
 int REG_HDMI_INFOFRAME_CTRL1 ;
 int drm_hdmi_avi_infoframe_from_display_mode (int *,int ,struct drm_display_mode const*) ;
 int hdmi_infoframe_pack (union hdmi_infoframe*,int*,int) ;
 int hdmi_read (struct hdmi*,int ) ;
 int hdmi_write (struct hdmi*,int ,int) ;

__attribute__((used)) static void msm_hdmi_config_avi_infoframe(struct hdmi *hdmi)
{
 struct drm_crtc *crtc = hdmi->encoder->crtc;
 const struct drm_display_mode *mode = &crtc->state->adjusted_mode;
 union hdmi_infoframe frame;
 u8 buffer[HDMI_INFOFRAME_SIZE(AVI)];
 u32 val;
 int len;

 drm_hdmi_avi_infoframe_from_display_mode(&frame.avi,
       hdmi->connector, mode);

 len = hdmi_infoframe_pack(&frame, buffer, sizeof(buffer));
 if (len < 0) {
  DRM_DEV_ERROR(&hdmi->pdev->dev,
   "failed to configure avi infoframe\n");
  return;
 }







 hdmi_write(hdmi, REG_HDMI_AVI_INFO(0),
     buffer[3] |
     buffer[4] << 8 |
     buffer[5] << 16 |
     buffer[6] << 24);

 hdmi_write(hdmi, REG_HDMI_AVI_INFO(1),
     buffer[7] |
     buffer[8] << 8 |
     buffer[9] << 16 |
     buffer[10] << 24);

 hdmi_write(hdmi, REG_HDMI_AVI_INFO(2),
     buffer[11] |
     buffer[12] << 8 |
     buffer[13] << 16 |
     buffer[14] << 24);

 hdmi_write(hdmi, REG_HDMI_AVI_INFO(3),
     buffer[15] |
     buffer[16] << 8 |
     buffer[1] << 24);

 hdmi_write(hdmi, REG_HDMI_INFOFRAME_CTRL0,
     HDMI_INFOFRAME_CTRL0_AVI_SEND |
     HDMI_INFOFRAME_CTRL0_AVI_CONT);

 val = hdmi_read(hdmi, REG_HDMI_INFOFRAME_CTRL1);
 val &= ~HDMI_INFOFRAME_CTRL1_AVI_INFO_LINE__MASK;
 val |= HDMI_INFOFRAME_CTRL1_AVI_INFO_LINE(AVI_IFRAME_LINE_NUMBER);
 hdmi_write(hdmi, REG_HDMI_INFOFRAME_CTRL1, val);
}
