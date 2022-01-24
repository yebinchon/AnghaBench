#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tv_mode {int htotal; int hsync_end; int hblank_start; int hblank_end; int nbr_end; int vi_end_f1; int vi_end_f2; int vsync_len; int vsync_start_f1; int vsync_start_f2; int progressive; int oversample; int /*<<< orphan*/  clock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_display_mode {int crtc_hdisplay; int crtc_vdisplay; int hdisplay; int vdisplay; int crtc_clock; int clock; int flags; int /*<<< orphan*/  private_flags; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int /*<<< orphan*/  port_clock; int /*<<< orphan*/  output_types; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int /*<<< orphan*/  I915_MODE_FLAG_USE_SCANLINE_COUNTER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_TVOUT ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  TV_CTL ; 
 int TV_HBLANK_END_SHIFT ; 
 int TV_HBLANK_START_MASK ; 
 int TV_HBLANK_START_SHIFT ; 
 int TV_HSYNC_END_MASK ; 
 int TV_HSYNC_END_SHIFT ; 
 int TV_HTOTAL_MASK ; 
 int TV_HTOTAL_SHIFT ; 
 int /*<<< orphan*/  TV_H_CTL_1 ; 
 int /*<<< orphan*/  TV_H_CTL_3 ; 
 int TV_NBR_END_MASK ; 
 int TV_NBR_END_SHIFT ; 
#define  TV_OVERSAMPLE_2X 130 
#define  TV_OVERSAMPLE_4X 129 
#define  TV_OVERSAMPLE_8X 128 
 int TV_OVERSAMPLE_MASK ; 
 int TV_PROGRESSIVE ; 
 int TV_VI_END_F1_MASK ; 
 int TV_VI_END_F1_SHIFT ; 
 int TV_VI_END_F2_MASK ; 
 int TV_VI_END_F2_SHIFT ; 
 int TV_VSYNC_LEN_MASK ; 
 int TV_VSYNC_LEN_SHIFT ; 
 int TV_VSYNC_START_F1_MASK ; 
 int TV_VSYNC_START_F1_SHIFT ; 
 int TV_VSYNC_START_F2_MASK ; 
 int TV_VSYNC_START_F2_SHIFT ; 
 int /*<<< orphan*/  TV_V_CTL_1 ; 
 int /*<<< orphan*/  TV_V_CTL_2 ; 
 int /*<<< orphan*/  TV_WIN_POS ; 
 int /*<<< orphan*/  TV_WIN_SIZE ; 
 int /*<<< orphan*/  FUNC4 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_display_mode*,struct tv_mode*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_display_mode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_display_mode*,int,int,int) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct intel_encoder *encoder,
		    struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC8(encoder->base.dev);
	struct drm_display_mode *adjusted_mode =
		&pipe_config->base.adjusted_mode;
	struct drm_display_mode mode = {};
	u32 tv_ctl, hctl1, hctl3, vctl1, vctl2, tmp;
	struct tv_mode tv_mode = {};
	int hdisplay = adjusted_mode->crtc_hdisplay;
	int vdisplay = adjusted_mode->crtc_vdisplay;
	int xsize, ysize, xpos, ypos;

	pipe_config->output_types |= FUNC0(INTEL_OUTPUT_TVOUT);

	tv_ctl = FUNC2(TV_CTL);
	hctl1 = FUNC2(TV_H_CTL_1);
	hctl3 = FUNC2(TV_H_CTL_3);
	vctl1 = FUNC2(TV_V_CTL_1);
	vctl2 = FUNC2(TV_V_CTL_2);

	tv_mode.htotal = (hctl1 & TV_HTOTAL_MASK) >> TV_HTOTAL_SHIFT;
	tv_mode.hsync_end = (hctl1 & TV_HSYNC_END_MASK) >> TV_HSYNC_END_SHIFT;

	tv_mode.hblank_start = (hctl3 & TV_HBLANK_START_MASK) >> TV_HBLANK_START_SHIFT;
	tv_mode.hblank_end = (hctl3 & TV_HSYNC_END_MASK) >> TV_HBLANK_END_SHIFT;

	tv_mode.nbr_end = (vctl1 & TV_NBR_END_MASK) >> TV_NBR_END_SHIFT;
	tv_mode.vi_end_f1 = (vctl1 & TV_VI_END_F1_MASK) >> TV_VI_END_F1_SHIFT;
	tv_mode.vi_end_f2 = (vctl1 & TV_VI_END_F2_MASK) >> TV_VI_END_F2_SHIFT;

	tv_mode.vsync_len = (vctl2 & TV_VSYNC_LEN_MASK) >> TV_VSYNC_LEN_SHIFT;
	tv_mode.vsync_start_f1 = (vctl2 & TV_VSYNC_START_F1_MASK) >> TV_VSYNC_START_F1_SHIFT;
	tv_mode.vsync_start_f2 = (vctl2 & TV_VSYNC_START_F2_MASK) >> TV_VSYNC_START_F2_SHIFT;

	tv_mode.clock = pipe_config->port_clock;

	tv_mode.progressive = tv_ctl & TV_PROGRESSIVE;

	switch (tv_ctl & TV_OVERSAMPLE_MASK) {
	case TV_OVERSAMPLE_8X:
		tv_mode.oversample = 8;
		break;
	case TV_OVERSAMPLE_4X:
		tv_mode.oversample = 4;
		break;
	case TV_OVERSAMPLE_2X:
		tv_mode.oversample = 2;
		break;
	default:
		tv_mode.oversample = 1;
		break;
	}

	tmp = FUNC2(TV_WIN_POS);
	xpos = tmp >> 16;
	ypos = tmp & 0xffff;

	tmp = FUNC2(TV_WIN_SIZE);
	xsize = tmp >> 16;
	ysize = tmp & 0xffff;

	FUNC5(&mode, &tv_mode);

	FUNC1("TV mode:\n");
	FUNC4(&mode);

	FUNC6(&mode, hdisplay,
				  xpos, mode.hdisplay - xsize - xpos);
	FUNC7(&mode, vdisplay,
				 ypos, mode.vdisplay - ysize - ypos);

	adjusted_mode->crtc_clock = mode.clock;
	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
		adjusted_mode->crtc_clock /= 2;

	/* pixel counter doesn't work on i965gm TV output */
	if (FUNC3(dev_priv))
		adjusted_mode->private_flags |=
			I915_MODE_FLAG_USE_SCANLINE_COUNTER;
}