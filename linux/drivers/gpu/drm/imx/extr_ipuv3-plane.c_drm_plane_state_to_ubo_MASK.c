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
struct TYPE_3__ {int x1; int y1; } ;
struct drm_plane_state {TYPE_1__ src; struct drm_framebuffer* fb; } ;
struct drm_gem_cma_object {unsigned long paddr; } ;
struct drm_framebuffer {unsigned long* offsets; int* pitches; TYPE_2__* format; } ;
struct TYPE_4__ {int hsub; int vsub; int* cpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct drm_gem_cma_object* FUNC1 (struct drm_framebuffer*,int) ; 
 unsigned long FUNC2 (struct drm_plane_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long
FUNC3(struct drm_plane_state *state)
{
	struct drm_framebuffer *fb = state->fb;
	struct drm_gem_cma_object *cma_obj;
	unsigned long eba = FUNC2(state, 0);
	int x = state->src.x1 >> 16;
	int y = state->src.y1 >> 16;

	cma_obj = FUNC1(fb, 1);
	FUNC0(!cma_obj);

	x /= fb->format->hsub;
	y /= fb->format->vsub;

	return cma_obj->paddr + fb->offsets[1] + fb->pitches[1] * y +
	       fb->format->cpp[1] * x - eba;
}