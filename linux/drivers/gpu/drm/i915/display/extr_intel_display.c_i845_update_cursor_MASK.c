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
typedef  scalar_t__ u32 ;
struct TYPE_6__ {unsigned int crtc_w; unsigned int crtc_h; scalar_t__ visible; } ;
struct intel_plane_state {scalar_t__ ctl; TYPE_2__ base; } ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ size; scalar_t__ cntl; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {TYPE_3__ cursor; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_4__ uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CURSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  PIPE_A ; 
 scalar_t__ FUNC4 (struct intel_crtc_state const*) ; 
 scalar_t__ FUNC5 (struct intel_plane_state const*) ; 
 scalar_t__ FUNC6 (struct intel_plane_state const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct intel_plane *plane,
			       const struct intel_crtc_state *crtc_state,
			       const struct intel_plane_state *plane_state)
{
	struct drm_i915_private *dev_priv = FUNC9(plane->base.dev);
	u32 cntl = 0, base = 0, pos = 0, size = 0;
	unsigned long irqflags;

	if (plane_state && plane_state->base.visible) {
		unsigned int width = plane_state->base.crtc_w;
		unsigned int height = plane_state->base.crtc_h;

		cntl = plane_state->ctl |
			FUNC4(crtc_state);

		size = (height << 12) | width;

		base = FUNC5(plane_state);
		pos = FUNC6(plane_state);
	}

	FUNC7(&dev_priv->uncore.lock, irqflags);

	/* On these chipsets we can only modify the base/size/stride
	 * whilst the cursor is disabled.
	 */
	if (plane->cursor.base != base ||
	    plane->cursor.size != size ||
	    plane->cursor.cntl != cntl) {
		FUNC3(FUNC1(PIPE_A), 0);
		FUNC3(FUNC0(PIPE_A), base);
		FUNC3(CURSIZE, size);
		FUNC3(FUNC2(PIPE_A), pos);
		FUNC3(FUNC1(PIPE_A), cntl);

		plane->cursor.base = base;
		plane->cursor.size = size;
		plane->cursor.cntl = cntl;
	} else {
		FUNC3(FUNC2(PIPE_A), pos);
	}

	FUNC8(&dev_priv->uncore.lock, irqflags);
}