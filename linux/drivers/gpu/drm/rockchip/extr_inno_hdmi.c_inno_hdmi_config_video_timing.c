
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi {int dummy; } ;
struct drm_display_mode {int flags; int htotal; int hdisplay; int hsync_start; int hsync_end; int vtotal; int vdisplay; int vsync_start; int vsync_end; } ;


 int DRM_MODE_FLAG_INTERLACE ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int HDMI_PHY_FEEDBACK_DIV_RATIO_HIGH ;
 int HDMI_PHY_FEEDBACK_DIV_RATIO_LOW ;
 int HDMI_PHY_PRE_DIV_RATIO ;
 int HDMI_VIDEO_EXT_HBLANK_H ;
 int HDMI_VIDEO_EXT_HBLANK_L ;
 int HDMI_VIDEO_EXT_HDELAY_H ;
 int HDMI_VIDEO_EXT_HDELAY_L ;
 int HDMI_VIDEO_EXT_HDURATION_H ;
 int HDMI_VIDEO_EXT_HDURATION_L ;
 int HDMI_VIDEO_EXT_HTOTAL_H ;
 int HDMI_VIDEO_EXT_HTOTAL_L ;
 int HDMI_VIDEO_EXT_VBLANK ;
 int HDMI_VIDEO_EXT_VDELAY ;
 int HDMI_VIDEO_EXT_VDURATION ;
 int HDMI_VIDEO_EXT_VTOTAL_H ;
 int HDMI_VIDEO_EXT_VTOTAL_L ;
 int HDMI_VIDEO_TIMING_CTL ;
 int hdmi_writeb (struct inno_hdmi*,int ,int) ;
 int v_EXTERANL_VIDEO (int) ;
 int v_HSYNC_POLARITY (int) ;
 int v_INETLACE (int) ;
 int v_VSYNC_POLARITY (int) ;

__attribute__((used)) static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
      struct drm_display_mode *mode)
{
 int value;


 value = v_EXTERANL_VIDEO(1);
 value |= mode->flags & DRM_MODE_FLAG_PHSYNC ?
   v_HSYNC_POLARITY(1) : v_HSYNC_POLARITY(0);
 value |= mode->flags & DRM_MODE_FLAG_PVSYNC ?
   v_VSYNC_POLARITY(1) : v_VSYNC_POLARITY(0);
 value |= mode->flags & DRM_MODE_FLAG_INTERLACE ?
   v_INETLACE(1) : v_INETLACE(0);
 hdmi_writeb(hdmi, HDMI_VIDEO_TIMING_CTL, value);


 value = mode->htotal;
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HTOTAL_L, value & 0xFF);
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HTOTAL_H, (value >> 8) & 0xFF);

 value = mode->htotal - mode->hdisplay;
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_L, value & 0xFF);
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_H, (value >> 8) & 0xFF);

 value = mode->hsync_start - mode->hdisplay;
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_L, value & 0xFF);
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_H, (value >> 8) & 0xFF);

 value = mode->hsync_end - mode->hsync_start;
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDURATION_L, value & 0xFF);
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDURATION_H, (value >> 8) & 0xFF);

 value = mode->vtotal;
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VTOTAL_L, value & 0xFF);
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VTOTAL_H, (value >> 8) & 0xFF);

 value = mode->vtotal - mode->vdisplay;
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VBLANK, value & 0xFF);

 value = mode->vsync_start - mode->vdisplay;
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDELAY, value & 0xFF);

 value = mode->vsync_end - mode->vsync_start;
 hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDURATION, value & 0xFF);

 hdmi_writeb(hdmi, HDMI_PHY_PRE_DIV_RATIO, 0x1e);
 hdmi_writeb(hdmi, HDMI_PHY_FEEDBACK_DIV_RATIO_LOW, 0x2c);
 hdmi_writeb(hdmi, HDMI_PHY_FEEDBACK_DIV_RATIO_HIGH, 0x01);

 return 0;
}
