#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct hdmi_bridge {struct hdmi* hdmi; } ;
struct hdmi {int pixclock; scalar_t__ hdmi_mode; } ;
struct drm_display_mode {int clock; int htotal; int hsync_start; int hdisplay; int vtotal; int vsync_start; int vdisplay; int flags; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int DRM_MODE_FLAG_NHSYNC ; 
 int DRM_MODE_FLAG_NVSYNC ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int HDMI_FRAME_CTRL_HSYNC_LOW ; 
 int HDMI_FRAME_CTRL_INTERLACED_EN ; 
 int HDMI_FRAME_CTRL_VSYNC_LOW ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  REG_HDMI_ACTIVE_HSYNC ; 
 int /*<<< orphan*/  REG_HDMI_ACTIVE_VSYNC ; 
 int /*<<< orphan*/  REG_HDMI_FRAME_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_TOTAL ; 
 int /*<<< orphan*/  REG_HDMI_VSYNC_ACTIVE_F2 ; 
 int /*<<< orphan*/  REG_HDMI_VSYNC_TOTAL_F2 ; 
 int /*<<< orphan*/  FUNC10 (struct hdmi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hdmi*) ; 
 struct hdmi_bridge* FUNC12 (struct drm_bridge*) ; 

__attribute__((used)) static void FUNC13(struct drm_bridge *bridge,
		 const struct drm_display_mode *mode,
		 const struct drm_display_mode *adjusted_mode)
{
	struct hdmi_bridge *hdmi_bridge = FUNC12(bridge);
	struct hdmi *hdmi = hdmi_bridge->hdmi;
	int hstart, hend, vstart, vend;
	uint32_t frame_ctrl;

	mode = adjusted_mode;

	hdmi->pixclock = mode->clock * 1000;

	hstart = mode->htotal - mode->hsync_start;
	hend   = mode->htotal - mode->hsync_start + mode->hdisplay;

	vstart = mode->vtotal - mode->vsync_start - 1;
	vend   = mode->vtotal - mode->vsync_start + mode->vdisplay - 1;

	FUNC0("htotal=%d, vtotal=%d, hstart=%d, hend=%d, vstart=%d, vend=%d",
			mode->htotal, mode->vtotal, hstart, hend, vstart, vend);

	FUNC10(hdmi, REG_HDMI_TOTAL,
			FUNC5(mode->htotal - 1) |
			FUNC6(mode->vtotal - 1));

	FUNC10(hdmi, REG_HDMI_ACTIVE_HSYNC,
			FUNC2(hstart) |
			FUNC1(hend));
	FUNC10(hdmi, REG_HDMI_ACTIVE_VSYNC,
			FUNC4(vstart) |
			FUNC3(vend));

	if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
		FUNC10(hdmi, REG_HDMI_VSYNC_TOTAL_F2,
				FUNC9(mode->vtotal));
		FUNC10(hdmi, REG_HDMI_VSYNC_ACTIVE_F2,
				FUNC8(vstart + 1) |
				FUNC7(vend + 1));
	} else {
		FUNC10(hdmi, REG_HDMI_VSYNC_TOTAL_F2,
				FUNC9(0));
		FUNC10(hdmi, REG_HDMI_VSYNC_ACTIVE_F2,
				FUNC8(0) |
				FUNC7(0));
	}

	frame_ctrl = 0;
	if (mode->flags & DRM_MODE_FLAG_NHSYNC)
		frame_ctrl |= HDMI_FRAME_CTRL_HSYNC_LOW;
	if (mode->flags & DRM_MODE_FLAG_NVSYNC)
		frame_ctrl |= HDMI_FRAME_CTRL_VSYNC_LOW;
	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
		frame_ctrl |= HDMI_FRAME_CTRL_INTERLACED_EN;
	FUNC0("frame_ctrl=%08x", frame_ctrl);
	FUNC10(hdmi, REG_HDMI_FRAME_CTRL, frame_ctrl);

	if (hdmi->hdmi_mode)
		FUNC11(hdmi);
}