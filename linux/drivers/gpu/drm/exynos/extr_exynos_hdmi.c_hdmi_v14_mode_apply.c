
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* crtc; } ;
struct hdmi_context {int * drv_data; TYPE_3__ encoder; } ;
struct drm_display_mode {int vdisplay; int hdisplay; int htotal; int vtotal; int flags; int vsync_end; int vsync_start; int hsync_start; int hsync_end; } ;
struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; struct drm_display_mode mode; } ;


 int DRM_MODE_FLAG_INTERLACE ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int HDMI_HSYNC_POL ;
 int HDMI_H_BLANK_0 ;
 int HDMI_H_LINE_0 ;
 int HDMI_H_SYNC_END_0 ;
 int HDMI_H_SYNC_START_0 ;
 int HDMI_INT_PRO_MODE ;
 int HDMI_TG_DECON_EN ;
 int HDMI_TG_FIELD_BOT_HDMI_L ;
 int HDMI_TG_HACT_ST_L ;
 int HDMI_TG_HACT_SZ_L ;
 int HDMI_TG_H_FSZ_L ;
 int HDMI_TG_VACT_ST2_L ;
 int HDMI_TG_VACT_ST3_L ;
 int HDMI_TG_VACT_ST4_L ;
 int HDMI_TG_VACT_ST_L ;
 int HDMI_TG_VACT_SZ_L ;
 int HDMI_TG_VSYNC2_L ;
 int HDMI_TG_VSYNC_BOT_HDMI_L ;
 int HDMI_TG_V_FSZ_L ;
 int HDMI_V1_BLANK_0 ;
 int HDMI_V2_BLANK_0 ;
 int HDMI_VACT_SPACE_1_0 ;
 int HDMI_VACT_SPACE_2_0 ;
 int HDMI_VACT_SPACE_3_0 ;
 int HDMI_VACT_SPACE_4_0 ;
 int HDMI_VACT_SPACE_5_0 ;
 int HDMI_VACT_SPACE_6_0 ;
 int HDMI_VSYNC_POL ;
 int HDMI_V_BLANK_F0_0 ;
 int HDMI_V_BLANK_F1_0 ;
 int HDMI_V_BLANK_F2_0 ;
 int HDMI_V_BLANK_F3_0 ;
 int HDMI_V_BLANK_F4_0 ;
 int HDMI_V_BLANK_F5_0 ;
 int HDMI_V_LINE_0 ;
 int HDMI_V_SYNC_LINE_AFT_1_0 ;
 int HDMI_V_SYNC_LINE_AFT_2_0 ;
 int HDMI_V_SYNC_LINE_AFT_3_0 ;
 int HDMI_V_SYNC_LINE_AFT_4_0 ;
 int HDMI_V_SYNC_LINE_AFT_5_0 ;
 int HDMI_V_SYNC_LINE_AFT_6_0 ;
 int HDMI_V_SYNC_LINE_AFT_PXL_1_0 ;
 int HDMI_V_SYNC_LINE_AFT_PXL_2_0 ;
 int HDMI_V_SYNC_LINE_AFT_PXL_3_0 ;
 int HDMI_V_SYNC_LINE_AFT_PXL_4_0 ;
 int HDMI_V_SYNC_LINE_AFT_PXL_5_0 ;
 int HDMI_V_SYNC_LINE_AFT_PXL_6_0 ;
 int HDMI_V_SYNC_LINE_BEF_1_0 ;
 int HDMI_V_SYNC_LINE_BEF_2_0 ;
 int exynos5433_hdmi_driver_data ;
 int hdmi_reg_writeb (struct hdmi_context*,int ,int) ;
 int hdmi_reg_writev (struct hdmi_context*,int ,int,int) ;

__attribute__((used)) static void hdmi_v14_mode_apply(struct hdmi_context *hdata)
{
 struct drm_display_mode *m = &hdata->encoder.crtc->state->mode;
 struct drm_display_mode *am =
    &hdata->encoder.crtc->state->adjusted_mode;
 int hquirk = 0;






 if ((m->vdisplay != am->vdisplay) &&
     (m->hdisplay == 1280 || m->hdisplay == 1024 || m->hdisplay == 1366))
  hquirk = 258;

 hdmi_reg_writev(hdata, HDMI_H_BLANK_0, 2, m->htotal - m->hdisplay);
 hdmi_reg_writev(hdata, HDMI_V_LINE_0, 2, m->vtotal);
 hdmi_reg_writev(hdata, HDMI_H_LINE_0, 2, m->htotal);
 hdmi_reg_writev(hdata, HDMI_HSYNC_POL, 1,
   (m->flags & DRM_MODE_FLAG_NHSYNC) ? 1 : 0);
 hdmi_reg_writev(hdata, HDMI_VSYNC_POL, 1,
   (m->flags & DRM_MODE_FLAG_NVSYNC) ? 1 : 0);
 hdmi_reg_writev(hdata, HDMI_INT_PRO_MODE, 1,
   (m->flags & DRM_MODE_FLAG_INTERLACE) ? 1 : 0);
 if (m->flags & DRM_MODE_FLAG_INTERLACE) {
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_BEF_2_0, 2,
   (m->vsync_end - m->vdisplay) / 2);
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_BEF_1_0, 2,
   (m->vsync_start - m->vdisplay) / 2);
  hdmi_reg_writev(hdata, HDMI_V2_BLANK_0, 2, m->vtotal / 2);
  hdmi_reg_writev(hdata, HDMI_V1_BLANK_0, 2,
    (m->vtotal - m->vdisplay) / 2);
  hdmi_reg_writev(hdata, HDMI_V_BLANK_F0_0, 2,
    m->vtotal - m->vdisplay / 2);
  hdmi_reg_writev(hdata, HDMI_V_BLANK_F1_0, 2, m->vtotal);
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_2_0, 2,
    (m->vtotal / 2) + 7);
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_1_0, 2,
    (m->vtotal / 2) + 2);
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_PXL_2_0, 2,
   (m->htotal / 2) + (m->hsync_start - m->hdisplay));
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_PXL_1_0, 2,
   (m->htotal / 2) + (m->hsync_start - m->hdisplay));
  hdmi_reg_writev(hdata, HDMI_TG_VACT_ST_L, 2,
    (m->vtotal - m->vdisplay) / 2);
  hdmi_reg_writev(hdata, HDMI_TG_VACT_SZ_L, 2, m->vdisplay / 2);
  hdmi_reg_writev(hdata, HDMI_TG_VACT_ST2_L, 2,
    m->vtotal - m->vdisplay / 2);
  hdmi_reg_writev(hdata, HDMI_TG_VSYNC2_L, 2,
    (m->vtotal / 2) + 1);
  hdmi_reg_writev(hdata, HDMI_TG_VSYNC_BOT_HDMI_L, 2,
    (m->vtotal / 2) + 1);
  hdmi_reg_writev(hdata, HDMI_TG_FIELD_BOT_HDMI_L, 2,
    (m->vtotal / 2) + 1);
  hdmi_reg_writev(hdata, HDMI_TG_VACT_ST3_L, 2, 0x0);
  hdmi_reg_writev(hdata, HDMI_TG_VACT_ST4_L, 2, 0x0);
 } else {
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_BEF_2_0, 2,
   m->vsync_end - m->vdisplay);
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_BEF_1_0, 2,
   m->vsync_start - m->vdisplay);
  hdmi_reg_writev(hdata, HDMI_V2_BLANK_0, 2, m->vtotal);
  hdmi_reg_writev(hdata, HDMI_V1_BLANK_0, 2,
    m->vtotal - m->vdisplay);
  hdmi_reg_writev(hdata, HDMI_V_BLANK_F0_0, 2, 0xffff);
  hdmi_reg_writev(hdata, HDMI_V_BLANK_F1_0, 2, 0xffff);
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_2_0, 2, 0xffff);
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_1_0, 2, 0xffff);
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_PXL_2_0, 2, 0xffff);
  hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_PXL_1_0, 2, 0xffff);
  hdmi_reg_writev(hdata, HDMI_TG_VACT_ST_L, 2,
    m->vtotal - m->vdisplay);
  hdmi_reg_writev(hdata, HDMI_TG_VACT_SZ_L, 2, m->vdisplay);
 }

 hdmi_reg_writev(hdata, HDMI_H_SYNC_START_0, 2,
   m->hsync_start - m->hdisplay - 2);
 hdmi_reg_writev(hdata, HDMI_H_SYNC_END_0, 2,
   m->hsync_end - m->hdisplay - 2);
 hdmi_reg_writev(hdata, HDMI_VACT_SPACE_1_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_VACT_SPACE_2_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_VACT_SPACE_3_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_VACT_SPACE_4_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_VACT_SPACE_5_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_VACT_SPACE_6_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_BLANK_F2_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_BLANK_F3_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_BLANK_F4_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_BLANK_F5_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_3_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_4_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_5_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_6_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_PXL_3_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_PXL_4_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_PXL_5_0, 2, 0xffff);
 hdmi_reg_writev(hdata, HDMI_V_SYNC_LINE_AFT_PXL_6_0, 2, 0xffff);

 hdmi_reg_writev(hdata, HDMI_TG_H_FSZ_L, 2, m->htotal);
 hdmi_reg_writev(hdata, HDMI_TG_HACT_ST_L, 2,
     m->htotal - m->hdisplay - hquirk);
 hdmi_reg_writev(hdata, HDMI_TG_HACT_SZ_L, 2, m->hdisplay + hquirk);
 hdmi_reg_writev(hdata, HDMI_TG_V_FSZ_L, 2, m->vtotal);
 if (hdata->drv_data == &exynos5433_hdmi_driver_data)
  hdmi_reg_writeb(hdata, HDMI_TG_DECON_EN, 1);
}
