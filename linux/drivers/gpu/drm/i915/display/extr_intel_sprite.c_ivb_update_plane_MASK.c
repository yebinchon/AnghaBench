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
typedef  int u32 ;
struct TYPE_11__ {int x1; int y1; } ;
struct TYPE_8__ {TYPE_5__ src; TYPE_5__ dst; } ;
struct drm_intel_sprite_colorkey {int min_value; int channel_mask; int max_value; scalar_t__ flags; } ;
struct intel_plane_state {int ctl; TYPE_3__* color_plane; TYPE_2__ base; struct drm_intel_sprite_colorkey ckey; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int pipe; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_4__ uncore; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_9__ {int offset; int x; int y; int stride; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int SPRITE_SCALE_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (TYPE_5__*) ; 
 int FUNC17 (TYPE_5__*) ; 
 int FUNC18 (int,int,struct intel_plane_state const*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct intel_plane_state const*) ; 
 int FUNC20 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC21 (struct intel_plane_state const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25(struct intel_plane *plane,
		 const struct intel_crtc_state *crtc_state,
		 const struct intel_plane_state *plane_state)
{
	struct drm_i915_private *dev_priv = FUNC24(plane->base.dev);
	enum pipe pipe = plane->pipe;
	u32 sprsurf_offset = plane_state->color_plane[0].offset;
	u32 linear_offset;
	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
	int crtc_x = plane_state->base.dst.x1;
	int crtc_y = plane_state->base.dst.y1;
	u32 crtc_w = FUNC17(&plane_state->base.dst);
	u32 crtc_h = FUNC16(&plane_state->base.dst);
	u32 x = plane_state->color_plane[0].x;
	u32 y = plane_state->color_plane[0].y;
	u32 src_w = FUNC17(&plane_state->base.src) >> 16;
	u32 src_h = FUNC16(&plane_state->base.src) >> 16;
	u32 sprctl, sprscale = 0;
	unsigned long irqflags;

	sprctl = plane_state->ctl | FUNC20(crtc_state);

	/* Sizes are 0 based */
	src_w--;
	src_h--;
	crtc_w--;
	crtc_h--;

	if (crtc_w != src_w || crtc_h != src_h)
		sprscale = SPRITE_SCALE_ENABLE | (src_w << 16) | src_h;

	linear_offset = FUNC18(x, y, plane_state, 0);

	FUNC22(&dev_priv->uncore.lock, irqflags);

	FUNC0(FUNC13(pipe), plane_state->color_plane[0].stride);
	FUNC0(FUNC10(pipe), (crtc_y << 16) | crtc_x);
	FUNC0(FUNC12(pipe), (crtc_h << 16) | crtc_w);
	if (FUNC3(dev_priv))
		FUNC0(FUNC11(pipe), sprscale);

	if (key->flags) {
		FUNC0(FUNC7(pipe), key->min_value);
		FUNC0(FUNC6(pipe), key->channel_mask);
		FUNC0(FUNC5(pipe), key->max_value);
	}

	/* HSW consolidates SPRTILEOFF and SPRLINOFF into a single SPROFFSET
	 * register */
	if (FUNC2(dev_priv) || FUNC1(dev_priv)) {
		FUNC0(FUNC9(pipe), (y << 16) | x);
	} else {
		FUNC0(FUNC8(pipe), linear_offset);
		FUNC0(FUNC15(pipe), (y << 16) | x);
	}

	/*
	 * The control register self-arms if the plane was previously
	 * disabled. Try to make the plane enable atomic by writing
	 * the control register just before the surface register.
	 */
	FUNC0(FUNC4(pipe), sprctl);
	FUNC0(FUNC14(pipe),
		      FUNC19(plane_state) + sprsurf_offset);

	FUNC21(plane_state);

	FUNC23(&dev_priv->uncore.lock, irqflags);
}