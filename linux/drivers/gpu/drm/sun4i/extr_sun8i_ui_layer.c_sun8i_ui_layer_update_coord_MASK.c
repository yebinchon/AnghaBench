#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_10__ {int /*<<< orphan*/  regs; } ;
struct sun8i_mixer {TYPE_4__ engine; } ;
struct TYPE_11__ {int x1; int y1; } ;
struct drm_plane_state {scalar_t__ src_w; scalar_t__ crtc_w; scalar_t__ src_h; scalar_t__ crtc_h; TYPE_5__ dst; TYPE_5__ src; TYPE_3__* crtc; } ;
struct drm_plane {scalar_t__ type; struct drm_plane_state* state; } ;
struct TYPE_9__ {TYPE_2__* state; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {TYPE_1__ adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 scalar_t__ DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ SUN8I_MIXER_BLEND_OUTCTL_INTERLACED ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  SUN8I_MIXER_GLOBAL_SIZE ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int FUNC9 (TYPE_5__*) ; 
 int FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (struct sun8i_mixer*) ; 
 scalar_t__ FUNC14 (struct sun8i_mixer*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sun8i_mixer*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sun8i_mixer*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct sun8i_mixer *mixer, int channel,
				       int overlay, struct drm_plane *plane,
				       unsigned int zpos)
{
	struct drm_plane_state *state = plane->state;
	u32 src_w, src_h, dst_w, dst_h;
	u32 bld_base, ch_base;
	u32 outsize, insize;
	u32 hphase, vphase;

	FUNC0("Updating UI channel %d overlay %d\n",
			 channel, overlay);

	bld_base = FUNC13(mixer);
	ch_base = FUNC14(mixer, channel);

	src_w = FUNC10(&state->src) >> 16;
	src_h = FUNC9(&state->src) >> 16;
	dst_w = FUNC10(&state->dst);
	dst_h = FUNC9(&state->dst);

	hphase = state->src.x1 & 0xffff;
	vphase = state->src.y1 & 0xffff;

	insize = FUNC8(src_w, src_h);
	outsize = FUNC8(dst_w, dst_h);

	if (plane->type == DRM_PLANE_TYPE_PRIMARY) {
		bool interlaced = false;
		u32 val;

		FUNC0("Primary layer, updating global size W: %u H: %u\n",
				 dst_w, dst_h);
		FUNC12(mixer->engine.regs,
			     SUN8I_MIXER_GLOBAL_SIZE,
			     outsize);
		FUNC12(mixer->engine.regs,
			     FUNC4(bld_base), outsize);

		if (state->crtc)
			interlaced = state->crtc->state->adjusted_mode.flags
				& DRM_MODE_FLAG_INTERLACE;

		if (interlaced)
			val = SUN8I_MIXER_BLEND_OUTCTL_INTERLACED;
		else
			val = 0;

		FUNC11(mixer->engine.regs,
				   FUNC3(bld_base),
				   SUN8I_MIXER_BLEND_OUTCTL_INTERLACED,
				   val);

		FUNC0("Switching display mixer interlaced mode %s\n",
				 interlaced ? "on" : "off");
	}

	/* Set height and width */
	FUNC0("Layer source offset X: %d Y: %d\n",
			 state->src.x1 >> 16, state->src.y1 >> 16);
	FUNC0("Layer source size W: %d H: %d\n", src_w, src_h);
	FUNC12(mixer->engine.regs,
		     FUNC5(ch_base, overlay),
		     insize);
	FUNC12(mixer->engine.regs,
		     FUNC6(ch_base),
		     insize);

	if (insize != outsize || hphase || vphase) {
		u32 hscale, vscale;

		FUNC0("HW scaling is enabled\n");

		hscale = state->src_w / state->crtc_w;
		vscale = state->src_h / state->crtc_h;

		FUNC16(mixer, channel, src_w, src_h, dst_w,
				      dst_h, hscale, vscale, hphase, vphase);
		FUNC15(mixer, channel, true);
	} else {
		FUNC0("HW scaling is not needed\n");
		FUNC15(mixer, channel, false);
	}

	/* Set base coordinates */
	FUNC0("Layer destination coordinates X: %d Y: %d\n",
			 state->dst.x1, state->dst.y1);
	FUNC0("Layer destination size W: %d H: %d\n", dst_w, dst_h);
	FUNC12(mixer->engine.regs,
		     FUNC1(bld_base, zpos),
		     FUNC7(state->dst.x1, state->dst.y1));
	FUNC12(mixer->engine.regs,
		     FUNC2(bld_base, zpos),
		     outsize);

	return 0;
}