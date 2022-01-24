#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct video_levels {unsigned int burst; unsigned int black; unsigned int blank; } ;
struct tv_mode {int burst_ena; int oversample; int dda1_inc; int dda2_inc; int dda3_inc; unsigned int sc_reset; unsigned int dda2_size; unsigned int dda3_size; unsigned int hblank_start; unsigned int hblank_end; unsigned int* filter_table; scalar_t__ pal_burst; scalar_t__ trilevel_sync; scalar_t__ progressive; struct color_conversion* svideo_color; struct video_levels* svideo_levels; struct color_conversion* composite_color; struct video_levels* composite_levels; } ;
struct TYPE_10__ {int top; scalar_t__ bottom; } ;
struct intel_tv_connector_state {TYPE_5__ margins; scalar_t__ bypass_vfilter; } ;
struct intel_tv {int type; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_8__ {int left; scalar_t__ right; } ;
struct TYPE_9__ {TYPE_3__ margins; } ;
struct drm_connector_state {TYPE_4__ tv; } ;
struct color_conversion {int dummy; } ;

/* Variables and functions */
#define  DRM_MODE_CONNECTOR_Component 131 
#define  DRM_MODE_CONNECTOR_Composite 130 
#define  DRM_MODE_CONNECTOR_SVIDEO 129 
#define  DRM_MODE_CONNECTOR_Unknown 128 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 unsigned int TV_AUTO_SCALE ; 
 unsigned int TV_BLACK_LEVEL_SHIFT ; 
 unsigned int TV_BLANK_LEVEL_SHIFT ; 
 unsigned int TV_BURST_LEVEL_SHIFT ; 
 int /*<<< orphan*/  TV_CLR_KNOBS ; 
 int /*<<< orphan*/  TV_CLR_LEVEL ; 
 int /*<<< orphan*/  TV_CTL ; 
 unsigned int TV_CTL_SAVE ; 
 int /*<<< orphan*/  TV_DAC ; 
 unsigned int TV_DAC_SAVE ; 
 unsigned int TV_ENC_C0_FIX ; 
 unsigned int TV_ENC_OUTPUT_COMPONENT ; 
 unsigned int TV_ENC_OUTPUT_COMPOSITE ; 
 unsigned int TV_ENC_OUTPUT_SVIDEO ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int TV_ENC_SDP_FIX ; 
 int /*<<< orphan*/  TV_FILTER_CTL_1 ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned int TV_OVERSAMPLE_2X ; 
 unsigned int TV_OVERSAMPLE_4X ; 
 unsigned int TV_OVERSAMPLE_8X ; 
 unsigned int TV_OVERSAMPLE_NONE ; 
 unsigned int TV_PAL_BURST ; 
 unsigned int TV_PROGRESSIVE ; 
 unsigned int TV_SCDDA1_INC_SHIFT ; 
 unsigned int TV_SCDDA2_INC_SHIFT ; 
 unsigned int TV_SCDDA2_SIZE_SHIFT ; 
 unsigned int TV_SCDDA3_INC_SHIFT ; 
 unsigned int TV_SCDDA3_SIZE_SHIFT ; 
 int /*<<< orphan*/  TV_SC_CTL_1 ; 
 int /*<<< orphan*/  TV_SC_CTL_2 ; 
 int /*<<< orphan*/  TV_SC_CTL_3 ; 
 unsigned int TV_SC_DDA1_EN ; 
 unsigned int TV_SC_DDA2_EN ; 
 unsigned int TV_SC_DDA3_EN ; 
 unsigned int TV_TRILEVEL_SYNC ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned int TV_V_FILTER_BYPASS ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  TV_WIN_POS ; 
 int /*<<< orphan*/  TV_WIN_SIZE ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct video_levels component_levels ; 
 struct intel_tv* FUNC10 (struct intel_encoder*) ; 
 struct color_conversion hdtv_csc_yprpb ; 
 struct tv_mode* FUNC11 (struct drm_connector_state const*) ; 
 unsigned int FUNC12 (struct tv_mode const*) ; 
 struct color_conversion sdtv_csc_yprpb ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,struct color_conversion const*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*,struct tv_mode const*,int) ; 
 struct drm_i915_private* FUNC15 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC16 (int /*<<< orphan*/ ) ; 
 struct intel_tv_connector_state* FUNC17 (struct drm_connector_state const*) ; 

__attribute__((used)) static void FUNC18(struct intel_encoder *encoder,
				const struct intel_crtc_state *pipe_config,
				const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC15(encoder->base.dev);
	struct intel_crtc *intel_crtc = FUNC16(pipe_config->base.crtc);
	struct intel_tv *intel_tv = FUNC10(encoder);
	const struct intel_tv_connector_state *tv_conn_state =
		FUNC17(conn_state);
	const struct tv_mode *tv_mode = FUNC11(conn_state);
	u32 tv_ctl, tv_filter_ctl;
	u32 scctl1, scctl2, scctl3;
	int i, j;
	const struct video_levels *video_levels;
	const struct color_conversion *color_conversion;
	bool burst_ena;
	int xpos, ypos;
	unsigned int xsize, ysize;

	if (!tv_mode)
		return;	/* can't happen (mode_prepare prevents this) */

	tv_ctl = FUNC0(TV_CTL);
	tv_ctl &= TV_CTL_SAVE;

	switch (intel_tv->type) {
	default:
	case DRM_MODE_CONNECTOR_Unknown:
	case DRM_MODE_CONNECTOR_Composite:
		tv_ctl |= TV_ENC_OUTPUT_COMPOSITE;
		video_levels = tv_mode->composite_levels;
		color_conversion = tv_mode->composite_color;
		burst_ena = tv_mode->burst_ena;
		break;
	case DRM_MODE_CONNECTOR_Component:
		tv_ctl |= TV_ENC_OUTPUT_COMPONENT;
		video_levels = &component_levels;
		if (tv_mode->burst_ena)
			color_conversion = &sdtv_csc_yprpb;
		else
			color_conversion = &hdtv_csc_yprpb;
		burst_ena = false;
		break;
	case DRM_MODE_CONNECTOR_SVIDEO:
		tv_ctl |= TV_ENC_OUTPUT_SVIDEO;
		video_levels = tv_mode->svideo_levels;
		color_conversion = tv_mode->svideo_color;
		burst_ena = tv_mode->burst_ena;
		break;
	}

	tv_ctl |= FUNC4(intel_crtc->pipe);

	switch (tv_mode->oversample) {
	case 8:
		tv_ctl |= TV_OVERSAMPLE_8X;
		break;
	case 4:
		tv_ctl |= TV_OVERSAMPLE_4X;
		break;
	case 2:
		tv_ctl |= TV_OVERSAMPLE_2X;
		break;
	default:
		tv_ctl |= TV_OVERSAMPLE_NONE;
		break;
	}

	if (tv_mode->progressive)
		tv_ctl |= TV_PROGRESSIVE;
	if (tv_mode->trilevel_sync)
		tv_ctl |= TV_TRILEVEL_SYNC;
	if (tv_mode->pal_burst)
		tv_ctl |= TV_PAL_BURST;

	scctl1 = 0;
	if (tv_mode->dda1_inc)
		scctl1 |= TV_SC_DDA1_EN;
	if (tv_mode->dda2_inc)
		scctl1 |= TV_SC_DDA2_EN;
	if (tv_mode->dda3_inc)
		scctl1 |= TV_SC_DDA3_EN;
	scctl1 |= tv_mode->sc_reset;
	if (video_levels)
		scctl1 |= video_levels->burst << TV_BURST_LEVEL_SHIFT;
	scctl1 |= tv_mode->dda1_inc << TV_SCDDA1_INC_SHIFT;

	scctl2 = tv_mode->dda2_size << TV_SCDDA2_SIZE_SHIFT |
		tv_mode->dda2_inc << TV_SCDDA2_INC_SHIFT;

	scctl3 = tv_mode->dda3_size << TV_SCDDA3_SIZE_SHIFT |
		tv_mode->dda3_inc << TV_SCDDA3_INC_SHIFT;

	/* Enable two fixes for the chips that need them. */
	if (FUNC3(dev_priv))
		tv_ctl |= TV_ENC_C0_FIX | TV_ENC_SDP_FIX;

	FUNC14(dev_priv, tv_mode, burst_ena);

	FUNC1(TV_SC_CTL_1, scctl1);
	FUNC1(TV_SC_CTL_2, scctl2);
	FUNC1(TV_SC_CTL_3, scctl3);

	FUNC13(dev_priv, color_conversion);

	if (FUNC2(dev_priv) >= 4)
		FUNC1(TV_CLR_KNOBS, 0x00404000);
	else
		FUNC1(TV_CLR_KNOBS, 0x00606000);

	if (video_levels)
		FUNC1(TV_CLR_LEVEL,
			   ((video_levels->black << TV_BLACK_LEVEL_SHIFT) |
			    (video_levels->blank << TV_BLANK_LEVEL_SHIFT)));

	FUNC9(dev_priv, intel_crtc->pipe);

	/* Filter ctl must be set before TV_WIN_SIZE */
	tv_filter_ctl = TV_AUTO_SCALE;
	if (tv_conn_state->bypass_vfilter)
		tv_filter_ctl |= TV_V_FILTER_BYPASS;
	FUNC1(TV_FILTER_CTL_1, tv_filter_ctl);

	xsize = tv_mode->hblank_start - tv_mode->hblank_end;
	ysize = FUNC12(tv_mode);

	xpos = conn_state->tv.margins.left;
	ypos = tv_conn_state->margins.top;
	xsize -= (conn_state->tv.margins.left +
		  conn_state->tv.margins.right);
	ysize -= (tv_conn_state->margins.top +
		  tv_conn_state->margins.bottom);
	FUNC1(TV_WIN_POS, (xpos<<16)|ypos);
	FUNC1(TV_WIN_SIZE, (xsize<<16)|ysize);

	j = 0;
	for (i = 0; i < 60; i++)
		FUNC1(FUNC6(i), tv_mode->filter_table[j++]);
	for (i = 0; i < 60; i++)
		FUNC1(FUNC5(i), tv_mode->filter_table[j++]);
	for (i = 0; i < 43; i++)
		FUNC1(FUNC8(i), tv_mode->filter_table[j++]);
	for (i = 0; i < 43; i++)
		FUNC1(FUNC7(i), tv_mode->filter_table[j++]);
	FUNC1(TV_DAC, FUNC0(TV_DAC) & TV_DAC_SAVE);
	FUNC1(TV_CTL, tv_ctl);
}