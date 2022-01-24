#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_8__ {int x1; int y1; } ;
struct TYPE_9__ {int alpha; struct drm_framebuffer* fb; int /*<<< orphan*/  src; TYPE_2__ dst; } ;
struct drm_intel_sprite_colorkey {int max_value; int channel_mask; int min_value; } ;
struct intel_plane_state {int color_ctl; scalar_t__ scaler_id; TYPE_5__* color_plane; TYPE_3__ base; struct intel_plane* linked_plane; struct drm_intel_sprite_colorkey ckey; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int id; int pipe; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_6__ uncore; } ;
struct drm_framebuffer {TYPE_4__* format; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_11__ {int offset; int x; int y; } ;
struct TYPE_10__ {scalar_t__ is_yuv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int PLANE_CUS_ENABLE ; 
 int PLANE_CUS_HPHASE_0 ; 
 int PLANE_CUS_PLANE_6 ; 
 int PLANE_CUS_PLANE_7 ; 
 int PLANE_CUS_VPHASE_0_25 ; 
 int PLANE_CUS_VPHASE_SIGN_NEGATIVE ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int PLANE_KEYMSK_ALPHA_ENABLE ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 scalar_t__ PLANE_SPRITE4 ; 
 scalar_t__ PLANE_SPRITE5 ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct intel_crtc_state const*) ; 
 scalar_t__ FUNC21 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_plane*,struct intel_crtc_state const*,struct intel_plane_state const*) ; 
 int FUNC23 (struct intel_plane_state const*) ; 
 int FUNC24 (struct intel_crtc_state const*) ; 
 int FUNC25 (struct intel_plane_state const*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct intel_plane*,struct intel_crtc_state const*,struct intel_plane_state const*) ; 
 int /*<<< orphan*/  FUNC27 (struct intel_plane*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC30 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC31(struct intel_plane *plane,
		  const struct intel_crtc_state *crtc_state,
		  const struct intel_plane_state *plane_state,
		  int color_plane, bool slave, u32 plane_ctl)
{
	struct drm_i915_private *dev_priv = FUNC30(plane->base.dev);
	enum plane_id plane_id = plane->id;
	enum pipe pipe = plane->pipe;
	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
	u32 surf_addr = plane_state->color_plane[color_plane].offset;
	u32 stride = FUNC25(plane_state, color_plane);
	u32 aux_stride = FUNC25(plane_state, 1);
	int crtc_x = plane_state->base.dst.x1;
	int crtc_y = plane_state->base.dst.y1;
	u32 x = plane_state->color_plane[color_plane].x;
	u32 y = plane_state->color_plane[color_plane].y;
	u32 src_w = FUNC19(&plane_state->base.src) >> 16;
	u32 src_h = FUNC18(&plane_state->base.src) >> 16;
	struct intel_plane *linked = plane_state->linked_plane;
	const struct drm_framebuffer *fb = plane_state->base.fb;
	u8 alpha = plane_state->base.alpha >> 8;
	u32 plane_color_ctl = 0;
	unsigned long irqflags;
	u32 keymsk, keymax;

	plane_ctl |= FUNC24(crtc_state);

	if (FUNC1(dev_priv) >= 10 || FUNC2(dev_priv))
		plane_color_ctl = plane_state->color_ctl |
			FUNC20(crtc_state);

	/* Sizes are 0 based */
	src_w--;
	src_h--;

	keymax = (key->max_value & 0xffffff) | FUNC10(alpha);

	keymsk = key->channel_mask & 0x7ffffff;
	if (alpha < 0xff)
		keymsk |= PLANE_KEYMSK_ALPHA_ENABLE;

	/* The scaler will handle the output position */
	if (plane_state->scaler_id >= 0) {
		crtc_x = 0;
		crtc_y = 0;
	}

	FUNC28(&dev_priv->uncore.lock, irqflags);

	FUNC0(FUNC16(pipe, plane_id), stride);
	FUNC0(FUNC14(pipe, plane_id), (crtc_y << 16) | crtc_x);
	FUNC0(FUNC15(pipe, plane_id), (src_h << 16) | src_w);
	FUNC0(FUNC4(pipe, plane_id),
		      (plane_state->color_plane[1].offset - surf_addr) | aux_stride);

	if (FUNC21(dev_priv, plane_id)) {
		u32 cus_ctl = 0;

		if (linked) {
			/* Enable and use MPEG-2 chroma siting */
			cus_ctl = PLANE_CUS_ENABLE |
				PLANE_CUS_HPHASE_0 |
				PLANE_CUS_VPHASE_SIGN_NEGATIVE |
				PLANE_CUS_VPHASE_0_25;

			if (linked->id == PLANE_SPRITE5)
				cus_ctl |= PLANE_CUS_PLANE_7;
			else if (linked->id == PLANE_SPRITE4)
				cus_ctl |= PLANE_CUS_PLANE_6;
			else
				FUNC3(linked->id);
		}

		FUNC0(FUNC8(pipe, plane_id), cus_ctl);
	}

	if (FUNC1(dev_priv) >= 10 || FUNC2(dev_priv))
		FUNC0(FUNC6(pipe, plane_id), plane_color_ctl);

	if (fb->format->is_yuv && FUNC21(dev_priv, plane_id))
		FUNC22(plane, crtc_state, plane_state);

	FUNC27(plane, crtc_state);

	FUNC0(FUNC12(pipe, plane_id), key->min_value);
	FUNC0(FUNC11(pipe, plane_id), keymsk);
	FUNC0(FUNC9(pipe, plane_id), keymax);

	FUNC0(FUNC13(pipe, plane_id), (y << 16) | x);

	if (FUNC1(dev_priv) < 11)
		FUNC0(FUNC5(pipe, plane_id),
			      (plane_state->color_plane[1].y << 16) |
			      plane_state->color_plane[1].x);

	/*
	 * The control register self-arms if the plane was previously
	 * disabled. Try to make the plane enable atomic by writing
	 * the control register just before the surface register.
	 */
	FUNC0(FUNC7(pipe, plane_id), plane_ctl);
	FUNC0(FUNC17(pipe, plane_id),
		      FUNC23(plane_state) + surf_addr);

	if (!slave && plane_state->scaler_id >= 0)
		FUNC26(plane, crtc_state, plane_state);

	FUNC29(&dev_priv->uncore.lock, irqflags);
}