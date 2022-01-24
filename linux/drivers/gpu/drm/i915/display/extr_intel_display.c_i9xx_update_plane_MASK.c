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
struct intel_plane_state {int ctl; TYPE_3__* color_plane; TYPE_2__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int i9xx_plane; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_4__ uncore; } ;
typedef  enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;
struct TYPE_9__ {int x; int y; int offset; int stride; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct drm_i915_private*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*) ; 
 scalar_t__ FUNC13 (struct drm_i915_private*) ; 
 int PLANE_B ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (TYPE_5__*) ; 
 int FUNC18 (TYPE_5__*) ; 
 int FUNC19 (struct intel_crtc_state const*) ; 
 int FUNC20 (int,int,struct intel_plane_state const*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct intel_plane_state const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(struct intel_plane *plane,
			      const struct intel_crtc_state *crtc_state,
			      const struct intel_plane_state *plane_state)
{
	struct drm_i915_private *dev_priv = FUNC24(plane->base.dev);
	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
	u32 linear_offset;
	int x = plane_state->color_plane[0].x;
	int y = plane_state->color_plane[0].y;
	int crtc_x = plane_state->base.dst.x1;
	int crtc_y = plane_state->base.dst.y1;
	int crtc_w = FUNC18(&plane_state->base.dst);
	int crtc_h = FUNC17(&plane_state->base.dst);
	unsigned long irqflags;
	u32 dspaddr_offset;
	u32 dspcntr;

	dspcntr = plane_state->ctl | FUNC19(crtc_state);

	linear_offset = FUNC20(x, y, plane_state, 0);

	if (FUNC10(dev_priv) >= 4)
		dspaddr_offset = plane_state->color_plane[0].offset;
	else
		dspaddr_offset = linear_offset;

	FUNC22(&dev_priv->uncore.lock, irqflags);

	FUNC9(FUNC6(i9xx_plane), plane_state->color_plane[0].stride);

	if (FUNC10(dev_priv) < 4) {
		/*
		 * PLANE_A doesn't actually have a full window
		 * generator but let's assume we still need to
		 * program whatever is there.
		 */
		FUNC9(FUNC4(i9xx_plane), (crtc_y << 16) | crtc_x);
		FUNC9(FUNC5(i9xx_plane),
			      ((crtc_h - 1) << 16) | (crtc_w - 1));
	} else if (FUNC12(dev_priv) && i9xx_plane == PLANE_B) {
		FUNC9(FUNC15(i9xx_plane), (crtc_y << 16) | crtc_x);
		FUNC9(FUNC16(i9xx_plane),
			      ((crtc_h - 1) << 16) | (crtc_w - 1));
		FUNC9(FUNC14(i9xx_plane), 0);
	}

	if (FUNC13(dev_priv) || FUNC11(dev_priv)) {
		FUNC9(FUNC3(i9xx_plane), (y << 16) | x);
	} else if (FUNC10(dev_priv) >= 4) {
		FUNC9(FUNC2(i9xx_plane), linear_offset);
		FUNC9(FUNC8(i9xx_plane), (y << 16) | x);
	}

	/*
	 * The control register self-arms if the plane was previously
	 * disabled. Try to make the plane enable atomic by writing
	 * the control register just before the surface register.
	 */
	FUNC9(FUNC1(i9xx_plane), dspcntr);
	if (FUNC10(dev_priv) >= 4)
		FUNC9(FUNC7(i9xx_plane),
			      FUNC21(plane_state) +
			      dspaddr_offset);
	else
		FUNC9(FUNC0(i9xx_plane),
			      FUNC21(plane_state) +
			      dspaddr_offset);

	FUNC23(&dev_priv->uncore.lock, irqflags);
}