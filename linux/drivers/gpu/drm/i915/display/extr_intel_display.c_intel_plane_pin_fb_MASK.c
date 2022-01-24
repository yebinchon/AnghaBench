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
struct TYPE_7__ {struct drm_framebuffer* fb; int /*<<< orphan*/  plane; } ;
struct intel_plane_state {struct i915_vma* vma; int /*<<< orphan*/  flags; int /*<<< orphan*/  view; TYPE_3__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {scalar_t__ id; TYPE_1__ base; } ;
struct i915_vma {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_6__ {scalar_t__ cursor_needs_physical; } ;
struct TYPE_8__ {TYPE_2__ display; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 scalar_t__ PLANE_CURSOR ; 
 int FUNC2 (struct i915_vma*) ; 
 int FUNC3 (struct drm_i915_gem_object*,int const) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 struct drm_i915_gem_object* FUNC5 (struct drm_framebuffer*) ; 
 struct i915_vma* FUNC6 (struct drm_framebuffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_plane_state*) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC9(plane_state->base.plane);
	struct drm_i915_private *dev_priv = FUNC8(plane->base.dev);
	struct drm_framebuffer *fb = plane_state->base.fb;
	struct i915_vma *vma;

	if (plane->id == PLANE_CURSOR &&
	    FUNC0(dev_priv)->display.cursor_needs_physical) {
		struct drm_i915_gem_object *obj = FUNC5(fb);
		const int align = FUNC4(dev_priv);
		int err;

		err = FUNC3(obj, align);
		if (err)
			return err;
	}

	vma = FUNC6(fb,
					 &plane_state->view,
					 FUNC7(plane_state),
					 &plane_state->flags);
	if (FUNC1(vma))
		return FUNC2(vma);

	plane_state->vma = vma;

	return 0;
}