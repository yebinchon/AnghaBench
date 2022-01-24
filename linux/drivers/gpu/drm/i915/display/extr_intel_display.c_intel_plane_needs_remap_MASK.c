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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {unsigned int rotation; int /*<<< orphan*/  visible; struct drm_framebuffer* fb; int /*<<< orphan*/  plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct intel_plane {scalar_t__ (* max_stride ) (struct intel_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ;} ;
struct drm_framebuffer {int /*<<< orphan*/  modifier; TYPE_1__* format; } ;
struct TYPE_3__ {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_framebuffer const*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_plane_state const*) ; 
 scalar_t__ FUNC2 (struct intel_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct intel_plane* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(const struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC3(plane_state->base.plane);
	const struct drm_framebuffer *fb = plane_state->base.fb;
	unsigned int rotation = plane_state->base.rotation;
	u32 stride, max_stride;

	/*
	 * No remapping for invisible planes since we don't have
	 * an actual source viewport to remap.
	 */
	if (!plane_state->base.visible)
		return false;

	if (!FUNC1(plane_state))
		return false;

	/*
	 * FIXME: aux plane limits on gen9+ are
	 * unclear in Bspec, for now no checking.
	 */
	stride = FUNC0(fb, 0, rotation);
	max_stride = plane->max_stride(plane, fb->format->format,
				       fb->modifier, rotation);

	return stride > max_stride;
}