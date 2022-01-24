#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_10__ {int x1; int y1; } ;
struct TYPE_8__ {unsigned int rotation; TYPE_4__ src; int /*<<< orphan*/  visible; TYPE_1__* plane; } ;
struct intel_plane_state {TYPE_3__* color_plane; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_9__ {int x; int y; scalar_t__ offset; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int DRM_MODE_REFLECT_X ; 
 unsigned int DRM_MODE_ROTATE_180 ; 
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,int) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,struct intel_plane_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int*,int*,struct intel_plane_state*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct intel_plane_state*) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct intel_plane_state *plane_state)
{
	struct drm_i915_private *dev_priv =
		FUNC9(plane_state->base.plane->dev);
	int src_x, src_y;
	u32 offset;
	int ret;

	ret = FUNC8(plane_state);
	if (ret)
		return ret;

	if (!plane_state->base.visible)
		return 0;

	src_x = plane_state->base.src.x1 >> 16;
	src_y = plane_state->base.src.y1 >> 16;

	FUNC6(&src_x, &src_y, plane_state, 0);

	if (FUNC0(dev_priv) >= 4)
		offset = FUNC7(&src_x, &src_y,
							    plane_state, 0);
	else
		offset = 0;

	/*
	 * Put the final coordinates back so that the src
	 * coordinate checks will see the right values.
	 */
	FUNC4(&plane_state->base.src,
			   (src_x << 16) - plane_state->base.src.x1,
			   (src_y << 16) - plane_state->base.src.y1);

	/* HSW/BDW do this automagically in hardware */
	if (!FUNC2(dev_priv) && !FUNC1(dev_priv)) {
		unsigned int rotation = plane_state->base.rotation;
		int src_w = FUNC5(&plane_state->base.src) >> 16;
		int src_h = FUNC3(&plane_state->base.src) >> 16;

		if (rotation & DRM_MODE_ROTATE_180) {
			src_x += src_w - 1;
			src_y += src_h - 1;
		} else if (rotation & DRM_MODE_REFLECT_X) {
			src_x += src_w - 1;
		}
	}

	plane_state->color_plane[0].offset = offset;
	plane_state->color_plane[0].x = src_x;
	plane_state->color_plane[0].y = src_y;

	return 0;
}