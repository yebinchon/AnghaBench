#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_12__ {int /*<<< orphan*/  regs; } ;
struct sun8i_mixer {TYPE_5__ engine; TYPE_4__* cfg; int /*<<< orphan*/  mod_clk; } ;
struct TYPE_13__ {int x1; int y1; } ;
struct drm_plane_state {TYPE_6__ dst; TYPE_3__* crtc; TYPE_6__ src; TYPE_1__* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_format_info {int hsub; int vsub; } ;
struct drm_display_mode {int clock; int vtotal; int htotal; int vdisplay; } ;
struct TYPE_11__ {int scanline_yuv; } ;
struct TYPE_10__ {TYPE_2__* state; } ;
struct TYPE_9__ {struct drm_display_mode mode; } ;
struct TYPE_8__ {struct drm_format_info* format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int FUNC15 (TYPE_6__*) ; 
 int FUNC16 (TYPE_6__*) ; 
 int FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (struct sun8i_mixer*) ; 
 int FUNC20 (struct sun8i_mixer*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sun8i_mixer*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sun8i_mixer*,int,int,int,int,int,int,int,int,int,struct drm_format_info const*) ; 

__attribute__((used)) static int FUNC23(struct sun8i_mixer *mixer, int channel,
				       int overlay, struct drm_plane *plane,
				       unsigned int zpos)
{
	struct drm_plane_state *state = plane->state;
	const struct drm_format_info *format = state->fb->format;
	u32 src_w, src_h, dst_w, dst_h;
	u32 bld_base, ch_base;
	u32 outsize, insize;
	u32 hphase, vphase;
	u32 hn = 0, hm = 0;
	u32 vn = 0, vm = 0;
	bool subsampled;

	FUNC0("Updating VI channel %d overlay %d\n",
			 channel, overlay);

	bld_base = FUNC19(mixer);
	ch_base = FUNC20(mixer, channel);

	src_w = FUNC16(&state->src) >> 16;
	src_h = FUNC15(&state->src) >> 16;
	dst_w = FUNC16(&state->dst);
	dst_h = FUNC15(&state->dst);

	hphase = state->src.x1 & 0xffff;
	vphase = state->src.y1 & 0xffff;

	/* make coordinates dividable by subsampling factor */
	if (format->hsub > 1) {
		int mask, remainder;

		mask = format->hsub - 1;
		remainder = (state->src.x1 >> 16) & mask;
		src_w = (src_w + remainder) & ~mask;
		hphase += remainder << 16;
	}

	if (format->vsub > 1) {
		int mask, remainder;

		mask = format->vsub - 1;
		remainder = (state->src.y1 >> 16) & mask;
		src_h = (src_h + remainder) & ~mask;
		vphase += remainder << 16;
	}

	insize = FUNC12(src_w, src_h);
	outsize = FUNC12(dst_w, dst_h);

	/* Set height and width */
	FUNC0("Layer source offset X: %d Y: %d\n",
			 (state->src.x1 >> 16) & ~(format->hsub - 1),
			 (state->src.y1 >> 16) & ~(format->vsub - 1));
	FUNC0("Layer source size W: %d H: %d\n", src_w, src_h);
	FUNC18(mixer->engine.regs,
		     FUNC7(ch_base, overlay),
		     insize);
	FUNC18(mixer->engine.regs,
		     FUNC8(ch_base),
		     insize);

	/*
	 * Scaler must be enabled for subsampled formats, so it scales
	 * chroma to same size as luma.
	 */
	subsampled = format->hsub > 1 || format->vsub > 1;

	if (insize != outsize || subsampled || hphase || vphase) {
		unsigned int scanline, required;
		struct drm_display_mode *mode;
		u32 hscale, vscale, fps;
		u64 ability;

		FUNC0("HW scaling is enabled\n");

		mode = &plane->state->crtc->state->mode;
		fps = (mode->clock * 1000) / (mode->vtotal * mode->htotal);
		ability = FUNC13(mixer->mod_clk);
		/* BSP algorithm assumes 80% efficiency of VI scaler unit */
		ability *= 80;
		FUNC14(ability, mode->vdisplay * fps * FUNC17(src_w, dst_w));

		required = src_h * 100 / dst_h;

		if (ability < required) {
			FUNC0("Using vertical coarse scaling\n");
			vm = src_h;
			vn = (u32)ability * dst_h / 100;
			src_h = vn;
		}

		/* it seems that every RGB scaler has buffer for 2048 pixels */
		scanline = subsampled ? mixer->cfg->scanline_yuv : 2048;

		if (src_w > scanline) {
			FUNC0("Using horizontal coarse scaling\n");
			hm = src_w;
			hn = scanline;
			src_w = hn;
		}

		hscale = (src_w << 16) / dst_w;
		vscale = (src_h << 16) / dst_h;

		FUNC22(mixer, channel, src_w, src_h, dst_w,
				      dst_h, hscale, vscale, hphase, vphase,
				      format);
		FUNC21(mixer, channel, true);
	} else {
		FUNC0("HW scaling is not needed\n");
		FUNC21(mixer, channel, false);
	}

	FUNC18(mixer->engine.regs,
		     FUNC6(ch_base),
		     FUNC4(hn) |
		     FUNC3(hm));
	FUNC18(mixer->engine.regs,
		     FUNC5(ch_base),
		     FUNC4(hn) |
		     FUNC3(hm));
	FUNC18(mixer->engine.regs,
		     FUNC10(ch_base),
		     FUNC4(vn) |
		     FUNC3(vm));
	FUNC18(mixer->engine.regs,
		     FUNC9(ch_base),
		     FUNC4(vn) |
		     FUNC3(vm));

	/* Set base coordinates */
	FUNC0("Layer destination coordinates X: %d Y: %d\n",
			 state->dst.x1, state->dst.y1);
	FUNC0("Layer destination size W: %d H: %d\n", dst_w, dst_h);
	FUNC18(mixer->engine.regs,
		     FUNC1(bld_base, zpos),
		     FUNC11(state->dst.x1, state->dst.y1));
	FUNC18(mixer->engine.regs,
		     FUNC2(bld_base, zpos),
		     outsize);

	return 0;
}