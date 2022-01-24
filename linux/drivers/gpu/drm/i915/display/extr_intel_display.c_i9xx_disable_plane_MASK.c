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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int i9xx_plane; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_2__ uncore; } ;
typedef  enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct intel_plane *plane,
			       const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC8(plane->base.dev);
	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
	unsigned long irqflags;
	u32 dspcntr;

	/*
	 * DSPCNTR pipe gamma enable on g4x+ and pipe csc
	 * enable on ilk+ affect the pipe bottom color as
	 * well, so we must configure them even if the plane
	 * is disabled.
	 *
	 * On pre-g4x there is no way to gamma correct the
	 * pipe bottom color but we'll keep on doing this
	 * anyway so that the crtc state readout works correctly.
	 */
	dspcntr = FUNC5(crtc_state);

	FUNC6(&dev_priv->uncore.lock, irqflags);

	FUNC3(FUNC1(i9xx_plane), dspcntr);
	if (FUNC4(dev_priv) >= 4)
		FUNC3(FUNC2(i9xx_plane), 0);
	else
		FUNC3(FUNC0(i9xx_plane), 0);

	FUNC7(&dev_priv->uncore.lock, irqflags);
}