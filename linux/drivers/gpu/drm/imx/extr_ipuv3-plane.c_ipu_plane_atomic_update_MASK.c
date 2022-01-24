#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct ipu_plane_state {scalar_t__ use_pre; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct ipu_plane {int dp_flow; int /*<<< orphan*/  ipu_ch; TYPE_2__ base; int /*<<< orphan*/  alpha_ch; int /*<<< orphan*/  dmfc; int /*<<< orphan*/  dp; int /*<<< orphan*/  dma; } ;
struct drm_rect {int x1; int y1; } ;
struct drm_plane_state {int normalized_zpos; struct drm_rect src; struct drm_framebuffer* fb; struct drm_rect dst; TYPE_3__* crtc; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_framebuffer {int /*<<< orphan*/ * pitches; TYPE_4__* format; int /*<<< orphan*/  modifier; } ;
struct drm_format_info {int /*<<< orphan*/ * cpp; } ;
struct drm_crtc_state {int dummy; } ;
typedef  enum ipu_color_space { ____Placeholder_ipu_color_space } ipu_color_space ;
struct TYPE_8__ {int const format; int /*<<< orphan*/  has_alpha; } ;
struct TYPE_7__ {struct drm_crtc_state* state; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  DRM_FORMAT_BGR565_A8 143 
#define  DRM_FORMAT_BGR888_A8 142 
#define  DRM_FORMAT_BGRX8888_A8 141 
#define  DRM_FORMAT_NV12 140 
#define  DRM_FORMAT_NV16 139 
#define  DRM_FORMAT_RGB565_A8 138 
#define  DRM_FORMAT_RGB888_A8 137 
#define  DRM_FORMAT_RGBX8888_A8 136 
#define  DRM_FORMAT_YUV420 135 
#define  DRM_FORMAT_YUV422 134 
#define  DRM_FORMAT_YUV444 133 
#define  DRM_FORMAT_YVU420 132 
#define  DRM_FORMAT_YVU422 131 
#define  DRM_FORMAT_YVU444 130 
 int /*<<< orphan*/  IPUV3_COLORSPACE_RGB ; 
 int /*<<< orphan*/  IPUV3_COLORSPACE_UNKNOWN ; 
#define  IPU_DP_FLOW_SYNC_BG 129 
#define  IPU_DP_FLOW_SYNC_FG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc_state*) ; 
 struct drm_format_info* FUNC2 (int) ; 
 unsigned long FUNC3 (struct drm_plane_state*,int) ; 
 unsigned long FUNC4 (struct drm_plane_state*) ; 
 unsigned long FUNC5 (struct drm_plane_state*) ; 
 int FUNC6 (struct drm_rect*) ; 
 int FUNC7 (struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC24 (int const) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (struct ipu_plane*) ; 
 scalar_t__ FUNC31 (struct ipu_plane*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC33 (unsigned long,unsigned long) ; 
 struct ipu_plane* FUNC34 (struct drm_plane*) ; 
 struct ipu_plane_state* FUNC35 (struct drm_plane_state*) ; 

__attribute__((used)) static void FUNC36(struct drm_plane *plane,
				    struct drm_plane_state *old_state)
{
	struct ipu_plane *ipu_plane = FUNC34(plane);
	struct drm_plane_state *state = plane->state;
	struct ipu_plane_state *ipu_state = FUNC35(state);
	struct drm_crtc_state *crtc_state = state->crtc->state;
	struct drm_framebuffer *fb = state->fb;
	struct drm_rect *dst = &state->dst;
	unsigned long eba, ubo, vbo;
	unsigned long alpha_eba = 0;
	enum ipu_color_space ics;
	unsigned int axi_id = 0;
	const struct drm_format_info *info;
	u8 burstsize, num_bursts;
	u32 width, height;
	int active;

	if (ipu_plane->dp_flow == IPU_DP_FLOW_SYNC_FG)
		FUNC22(ipu_plane->dp, dst->x1, dst->y1);

	switch (ipu_plane->dp_flow) {
	case IPU_DP_FLOW_SYNC_BG:
		if (state->normalized_zpos == 1) {
			FUNC21(ipu_plane->dp,
						!fb->format->has_alpha, 0xff,
						true);
		} else {
			FUNC21(ipu_plane->dp, true, 0, true);
		}
		break;
	case IPU_DP_FLOW_SYNC_FG:
		if (state->normalized_zpos == 1) {
			FUNC21(ipu_plane->dp,
						!fb->format->has_alpha, 0xff,
						false);
		}
		break;
	}

	eba = FUNC3(state, 0);

	/*
	 * Configure PRG channel and attached PRE, this changes the EBA to an
	 * internal SRAM location.
	 */
	if (ipu_state->use_pre) {
		axi_id = FUNC9(ipu_plane->dma);
		FUNC32(ipu_plane->ipu_ch, axi_id,
					  FUNC7(&state->src) >> 16,
					  FUNC6(&state->src) >> 16,
					  fb->pitches[0], fb->format->format,
					  fb->modifier, &eba);
	}

	if (old_state->fb && !FUNC1(crtc_state)) {
		/* nothing to do if PRE is used */
		if (ipu_state->use_pre)
			return;
		active = FUNC26(ipu_plane->ipu_ch);
		FUNC11(ipu_plane->ipu_ch, !active, eba);
		FUNC28(ipu_plane->ipu_ch, !active);
		if (FUNC31(ipu_plane)) {
			active = FUNC26(ipu_plane->alpha_ch);
			FUNC11(ipu_plane->alpha_ch, !active,
					     alpha_eba);
			FUNC28(ipu_plane->alpha_ch, !active);
		}
		return;
	}

	ics = FUNC24(fb->format->format);
	switch (ipu_plane->dp_flow) {
	case IPU_DP_FLOW_SYNC_BG:
		FUNC23(ipu_plane->dp, ics, IPUV3_COLORSPACE_RGB);
		break;
	case IPU_DP_FLOW_SYNC_FG:
		FUNC23(ipu_plane->dp, ics,
					IPUV3_COLORSPACE_UNKNOWN);
		break;
	}

	FUNC20(ipu_plane->dmfc, FUNC7(dst));

	width = FUNC7(&state->src) >> 16;
	height = FUNC6(&state->src) >> 16;
	info = FUNC2(fb->format->format);
	FUNC8(width, info->cpp[0], fb->pitches[0],
			     &burstsize, &num_bursts);

	FUNC19(ipu_plane->ipu_ch);
	FUNC16(ipu_plane->ipu_ch, width, height);
	FUNC13(ipu_plane->ipu_ch, fb->format->format);
	FUNC12(ipu_plane->ipu_ch, burstsize);
	FUNC15(ipu_plane->ipu_ch);
	FUNC25(ipu_plane->ipu_ch, true);
	FUNC29(ipu_plane->ipu_ch, 1);
	FUNC17(ipu_plane->ipu_ch, fb->pitches[0]);
	FUNC10(ipu_plane->ipu_ch, axi_id);

	switch (fb->format->format) {
	case DRM_FORMAT_YUV420:
	case DRM_FORMAT_YVU420:
	case DRM_FORMAT_YUV422:
	case DRM_FORMAT_YVU422:
	case DRM_FORMAT_YUV444:
	case DRM_FORMAT_YVU444:
		ubo = FUNC4(state);
		vbo = FUNC5(state);
		if (fb->format->format == DRM_FORMAT_YVU420 ||
		    fb->format->format == DRM_FORMAT_YVU422 ||
		    fb->format->format == DRM_FORMAT_YVU444)
			FUNC33(ubo, vbo);

		FUNC18(ipu_plane->ipu_ch,
					      fb->pitches[1], ubo, vbo);

		FUNC0(ipu_plane->base.dev->dev,
			"phy = %lu %lu %lu, x = %d, y = %d", eba, ubo, vbo,
			state->src.x1 >> 16, state->src.y1 >> 16);
		break;
	case DRM_FORMAT_NV12:
	case DRM_FORMAT_NV16:
		ubo = FUNC4(state);

		FUNC18(ipu_plane->ipu_ch,
					      fb->pitches[1], ubo, ubo);

		FUNC0(ipu_plane->base.dev->dev,
			"phy = %lu %lu, x = %d, y = %d", eba, ubo,
			state->src.x1 >> 16, state->src.y1 >> 16);
		break;
	case DRM_FORMAT_RGB565_A8:
	case DRM_FORMAT_BGR565_A8:
	case DRM_FORMAT_RGB888_A8:
	case DRM_FORMAT_BGR888_A8:
	case DRM_FORMAT_RGBX8888_A8:
	case DRM_FORMAT_BGRX8888_A8:
		alpha_eba = FUNC3(state, 1);
		num_bursts = 0;

		FUNC0(ipu_plane->base.dev->dev, "phys = %lu %lu, x = %d, y = %d",
			eba, alpha_eba, state->src.x1 >> 16, state->src.y1 >> 16);

		FUNC12(ipu_plane->ipu_ch, 16);

		FUNC19(ipu_plane->alpha_ch);
		FUNC16(ipu_plane->alpha_ch,
					 FUNC7(&state->src) >> 16,
					 FUNC6(&state->src) >> 16);
		FUNC14(ipu_plane->alpha_ch, 8);
		FUNC15(ipu_plane->alpha_ch);
		FUNC29(ipu_plane->alpha_ch, 1);
		FUNC17(ipu_plane->alpha_ch, fb->pitches[1]);
		FUNC12(ipu_plane->alpha_ch, 16);
		FUNC11(ipu_plane->alpha_ch, 0, alpha_eba);
		FUNC11(ipu_plane->alpha_ch, 1, alpha_eba);
		break;
	default:
		FUNC0(ipu_plane->base.dev->dev, "phys = %lu, x = %d, y = %d",
			eba, state->src.x1 >> 16, state->src.y1 >> 16);
		break;
	}
	FUNC11(ipu_plane->ipu_ch, 0, eba);
	FUNC11(ipu_plane->ipu_ch, 1, eba);
	FUNC27(ipu_plane->ipu_ch, num_bursts);
	FUNC30(ipu_plane);
}