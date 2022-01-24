#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* crtc; } ;
struct hdmi_context {int /*<<< orphan*/ * drv_data; TYPE_3__ encoder; } ;
struct drm_display_mode {int vdisplay; int hdisplay; int htotal; int vtotal; int flags; int vsync_end; int vsync_start; int hsync_start; int hsync_end; } ;
struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; struct drm_display_mode mode; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_INTERLACE ; 
 int DRM_MODE_FLAG_NHSYNC ; 
 int DRM_MODE_FLAG_NVSYNC ; 
 int /*<<< orphan*/  HDMI_HSYNC_POL ; 
 int /*<<< orphan*/  HDMI_H_BLANK_0 ; 
 int /*<<< orphan*/  HDMI_H_LINE_0 ; 
 int /*<<< orphan*/  HDMI_H_SYNC_END_0 ; 
 int /*<<< orphan*/  HDMI_H_SYNC_START_0 ; 
 int /*<<< orphan*/  HDMI_INT_PRO_MODE ; 
 int /*<<< orphan*/  HDMI_TG_DECON_EN ; 
 int /*<<< orphan*/  HDMI_TG_FIELD_BOT_HDMI_L ; 
 int /*<<< orphan*/  HDMI_TG_HACT_ST_L ; 
 int /*<<< orphan*/  HDMI_TG_HACT_SZ_L ; 
 int /*<<< orphan*/  HDMI_TG_H_FSZ_L ; 
 int /*<<< orphan*/  HDMI_TG_VACT_ST2_L ; 
 int /*<<< orphan*/  HDMI_TG_VACT_ST3_L ; 
 int /*<<< orphan*/  HDMI_TG_VACT_ST4_L ; 
 int /*<<< orphan*/  HDMI_TG_VACT_ST_L ; 
 int /*<<< orphan*/  HDMI_TG_VACT_SZ_L ; 
 int /*<<< orphan*/  HDMI_TG_VSYNC2_L ; 
 int /*<<< orphan*/  HDMI_TG_VSYNC_BOT_HDMI_L ; 
 int /*<<< orphan*/  HDMI_TG_V_FSZ_L ; 
 int /*<<< orphan*/  HDMI_V1_BLANK_0 ; 
 int /*<<< orphan*/  HDMI_V2_BLANK_0 ; 
 int /*<<< orphan*/  HDMI_VACT_SPACE_1_0 ; 
 int /*<<< orphan*/  HDMI_VACT_SPACE_2_0 ; 
 int /*<<< orphan*/  HDMI_VACT_SPACE_3_0 ; 
 int /*<<< orphan*/  HDMI_VACT_SPACE_4_0 ; 
 int /*<<< orphan*/  HDMI_VACT_SPACE_5_0 ; 
 int /*<<< orphan*/  HDMI_VACT_SPACE_6_0 ; 
 int /*<<< orphan*/  HDMI_VSYNC_POL ; 
 int /*<<< orphan*/  HDMI_V_BLANK_F0_0 ; 
 int /*<<< orphan*/  HDMI_V_BLANK_F1_0 ; 
 int /*<<< orphan*/  HDMI_V_BLANK_F2_0 ; 
 int /*<<< orphan*/  HDMI_V_BLANK_F3_0 ; 
 int /*<<< orphan*/  HDMI_V_BLANK_F4_0 ; 
 int /*<<< orphan*/  HDMI_V_BLANK_F5_0 ; 
 int /*<<< orphan*/  HDMI_V_LINE_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_1_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_2_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_3_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_4_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_5_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_6_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_PXL_1_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_PXL_2_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_PXL_3_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_PXL_4_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_PXL_5_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_AFT_PXL_6_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_BEF_1_0 ; 
 int /*<<< orphan*/  HDMI_V_SYNC_LINE_BEF_2_0 ; 
 int /*<<< orphan*/  exynos5433_hdmi_driver_data ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_context*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct hdmi_context *hdata)
{
	struct drm_display_mode *m = &hdata->encoder.crtc->state->mode;
	struct drm_display_mode *am =
				&hdata->encoder.crtc->state->adjusted_mode;
	int hquirk = 0;

	/*
	 * In case video mode coming from CRTC differs from requested one HDMI
	 * sometimes is able to almost properly perform conversion - only
	 * first line is distorted.
	 */
	if ((m->vdisplay != am->vdisplay) &&
	    (m->hdisplay == 1280 || m->hdisplay == 1024 || m->hdisplay == 1366))
		hquirk = 258;

	FUNC1(hdata, HDMI_H_BLANK_0, 2, m->htotal - m->hdisplay);
	FUNC1(hdata, HDMI_V_LINE_0, 2, m->vtotal);
	FUNC1(hdata, HDMI_H_LINE_0, 2, m->htotal);
	FUNC1(hdata, HDMI_HSYNC_POL, 1,
			(m->flags & DRM_MODE_FLAG_NHSYNC) ? 1 : 0);
	FUNC1(hdata, HDMI_VSYNC_POL, 1,
			(m->flags & DRM_MODE_FLAG_NVSYNC) ? 1 : 0);
	FUNC1(hdata, HDMI_INT_PRO_MODE, 1,
			(m->flags & DRM_MODE_FLAG_INTERLACE) ? 1 : 0);

	/*
	 * Quirk requirement for exynos 5 HDMI IP design,
	 * 2 pixels less than the actual calculation for hsync_start
	 * and end.
	 */

	/* Following values & calculations differ for different type of modes */
	if (m->flags & DRM_MODE_FLAG_INTERLACE) {
		FUNC1(hdata, HDMI_V_SYNC_LINE_BEF_2_0, 2,
			(m->vsync_end - m->vdisplay) / 2);
		FUNC1(hdata, HDMI_V_SYNC_LINE_BEF_1_0, 2,
			(m->vsync_start - m->vdisplay) / 2);
		FUNC1(hdata, HDMI_V2_BLANK_0, 2, m->vtotal / 2);
		FUNC1(hdata, HDMI_V1_BLANK_0, 2,
				(m->vtotal - m->vdisplay) / 2);
		FUNC1(hdata, HDMI_V_BLANK_F0_0, 2,
				m->vtotal - m->vdisplay / 2);
		FUNC1(hdata, HDMI_V_BLANK_F1_0, 2, m->vtotal);
		FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_2_0, 2,
				(m->vtotal / 2) + 7);
		FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_1_0, 2,
				(m->vtotal / 2) + 2);
		FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_PXL_2_0, 2,
			(m->htotal / 2) + (m->hsync_start - m->hdisplay));
		FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_PXL_1_0, 2,
			(m->htotal / 2) + (m->hsync_start - m->hdisplay));
		FUNC1(hdata, HDMI_TG_VACT_ST_L, 2,
				(m->vtotal - m->vdisplay) / 2);
		FUNC1(hdata, HDMI_TG_VACT_SZ_L, 2, m->vdisplay / 2);
		FUNC1(hdata, HDMI_TG_VACT_ST2_L, 2,
				m->vtotal - m->vdisplay / 2);
		FUNC1(hdata, HDMI_TG_VSYNC2_L, 2,
				(m->vtotal / 2) + 1);
		FUNC1(hdata, HDMI_TG_VSYNC_BOT_HDMI_L, 2,
				(m->vtotal / 2) + 1);
		FUNC1(hdata, HDMI_TG_FIELD_BOT_HDMI_L, 2,
				(m->vtotal / 2) + 1);
		FUNC1(hdata, HDMI_TG_VACT_ST3_L, 2, 0x0);
		FUNC1(hdata, HDMI_TG_VACT_ST4_L, 2, 0x0);
	} else {
		FUNC1(hdata, HDMI_V_SYNC_LINE_BEF_2_0, 2,
			m->vsync_end - m->vdisplay);
		FUNC1(hdata, HDMI_V_SYNC_LINE_BEF_1_0, 2,
			m->vsync_start - m->vdisplay);
		FUNC1(hdata, HDMI_V2_BLANK_0, 2, m->vtotal);
		FUNC1(hdata, HDMI_V1_BLANK_0, 2,
				m->vtotal - m->vdisplay);
		FUNC1(hdata, HDMI_V_BLANK_F0_0, 2, 0xffff);
		FUNC1(hdata, HDMI_V_BLANK_F1_0, 2, 0xffff);
		FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_2_0, 2, 0xffff);
		FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_1_0, 2, 0xffff);
		FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_PXL_2_0, 2, 0xffff);
		FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_PXL_1_0, 2, 0xffff);
		FUNC1(hdata, HDMI_TG_VACT_ST_L, 2,
				m->vtotal - m->vdisplay);
		FUNC1(hdata, HDMI_TG_VACT_SZ_L, 2, m->vdisplay);
	}

	FUNC1(hdata, HDMI_H_SYNC_START_0, 2,
			m->hsync_start - m->hdisplay - 2);
	FUNC1(hdata, HDMI_H_SYNC_END_0, 2,
			m->hsync_end - m->hdisplay - 2);
	FUNC1(hdata, HDMI_VACT_SPACE_1_0, 2, 0xffff);
	FUNC1(hdata, HDMI_VACT_SPACE_2_0, 2, 0xffff);
	FUNC1(hdata, HDMI_VACT_SPACE_3_0, 2, 0xffff);
	FUNC1(hdata, HDMI_VACT_SPACE_4_0, 2, 0xffff);
	FUNC1(hdata, HDMI_VACT_SPACE_5_0, 2, 0xffff);
	FUNC1(hdata, HDMI_VACT_SPACE_6_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_BLANK_F2_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_BLANK_F3_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_BLANK_F4_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_BLANK_F5_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_3_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_4_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_5_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_6_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_PXL_3_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_PXL_4_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_PXL_5_0, 2, 0xffff);
	FUNC1(hdata, HDMI_V_SYNC_LINE_AFT_PXL_6_0, 2, 0xffff);

	FUNC1(hdata, HDMI_TG_H_FSZ_L, 2, m->htotal);
	FUNC1(hdata, HDMI_TG_HACT_ST_L, 2,
					m->htotal - m->hdisplay - hquirk);
	FUNC1(hdata, HDMI_TG_HACT_SZ_L, 2, m->hdisplay + hquirk);
	FUNC1(hdata, HDMI_TG_V_FSZ_L, 2, m->vtotal);
	if (hdata->drv_data == &exynos5433_hdmi_driver_data)
		FUNC0(hdata, HDMI_TG_DECON_EN, 1);
}