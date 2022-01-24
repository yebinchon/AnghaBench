#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct vc4_plane_state {size_t ptr0_offset; scalar_t__* dlist; int /*<<< orphan*/ * hw_dlist; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_gem_cma_object {scalar_t__ paddr; } ;
struct drm_framebuffer {scalar_t__* offsets; } ;
struct TYPE_2__ {scalar_t__ crtc_x; scalar_t__ crtc_y; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct drm_gem_cma_object* FUNC1 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 struct vc4_plane_state* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_plane *plane, struct drm_framebuffer *fb)
{
	struct vc4_plane_state *vc4_state = FUNC2(plane->state);
	struct drm_gem_cma_object *bo = FUNC1(fb, 0);
	uint32_t addr;

	/* We're skipping the address adjustment for negative origin,
	 * because this is only called on the primary plane.
	 */
	FUNC0(plane->state->crtc_x < 0 || plane->state->crtc_y < 0);
	addr = bo->paddr + fb->offsets[0];

	/* Write the new address into the hardware immediately.  The
	 * scanout will start from this address as soon as the FIFO
	 * needs to refill with pixels.
	 */
	FUNC3(addr, &vc4_state->hw_dlist[vc4_state->ptr0_offset]);

	/* Also update the CPU-side dlist copy, so that any later
	 * atomic updates that don't do a new modeset on our plane
	 * also use our updated address.
	 */
	vc4_state->dlist[vc4_state->ptr0_offset] = addr;
}