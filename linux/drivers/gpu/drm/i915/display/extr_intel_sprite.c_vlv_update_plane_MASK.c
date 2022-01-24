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
struct TYPE_8__ {TYPE_5__ dst; } ;
struct drm_intel_sprite_colorkey {int min_value; int channel_mask; int max_value; scalar_t__ flags; } ;
struct intel_plane_state {int ctl; TYPE_3__* color_plane; TYPE_2__ base; struct drm_intel_sprite_colorkey ckey; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int pipe; int id; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_4__ uncore; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_9__ {int offset; int x; int y; int stride; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int PIPE_B ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_plane_state const*) ; 
 int FUNC14 (TYPE_5__*) ; 
 int FUNC15 (TYPE_5__*) ; 
 int FUNC16 (int,int,struct intel_plane_state const*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct intel_plane_state const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_plane_state const*) ; 
 int /*<<< orphan*/  FUNC23 (struct intel_plane_state const*) ; 

__attribute__((used)) static void
FUNC24(struct intel_plane *plane,
		 const struct intel_crtc_state *crtc_state,
		 const struct intel_plane_state *plane_state)
{
	struct drm_i915_private *dev_priv = FUNC20(plane->base.dev);
	enum pipe pipe = plane->pipe;
	enum plane_id plane_id = plane->id;
	u32 sprsurf_offset = plane_state->color_plane[0].offset;
	u32 linear_offset;
	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
	int crtc_x = plane_state->base.dst.x1;
	int crtc_y = plane_state->base.dst.y1;
	u32 crtc_w = FUNC15(&plane_state->base.dst);
	u32 crtc_h = FUNC14(&plane_state->base.dst);
	u32 x = plane_state->color_plane[0].x;
	u32 y = plane_state->color_plane[0].y;
	unsigned long irqflags;
	u32 sprctl;

	sprctl = plane_state->ctl | FUNC21(crtc_state);

	/* Sizes are 0 based */
	crtc_w--;
	crtc_h--;

	linear_offset = FUNC16(x, y, plane_state, 0);

	FUNC18(&dev_priv->uncore.lock, irqflags);

	FUNC0(FUNC10(pipe, plane_id),
		      plane_state->color_plane[0].stride);
	FUNC0(FUNC8(pipe, plane_id), (crtc_y << 16) | crtc_x);
	FUNC0(FUNC9(pipe, plane_id), (crtc_h << 16) | crtc_w);
	FUNC0(FUNC3(pipe, plane_id), 0);

	if (FUNC1(dev_priv) && pipe == PIPE_B)
		FUNC13(plane_state);

	if (key->flags) {
		FUNC0(FUNC5(pipe, plane_id), key->min_value);
		FUNC0(FUNC6(pipe, plane_id), key->channel_mask);
		FUNC0(FUNC4(pipe, plane_id), key->max_value);
	}

	FUNC0(FUNC7(pipe, plane_id), linear_offset);
	FUNC0(FUNC12(pipe, plane_id), (y << 16) | x);

	/*
	 * The control register self-arms if the plane was previously
	 * disabled. Try to make the plane enable atomic by writing
	 * the control register just before the surface register.
	 */
	FUNC0(FUNC2(pipe, plane_id), sprctl);
	FUNC0(FUNC11(pipe, plane_id),
		      FUNC17(plane_state) + sprsurf_offset);

	FUNC22(plane_state);
	FUNC23(plane_state);

	FUNC19(&dev_priv->uncore.lock, irqflags);
}