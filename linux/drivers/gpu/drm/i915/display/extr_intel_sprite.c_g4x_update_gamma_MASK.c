#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_5__ {struct drm_framebuffer* fb; int /*<<< orphan*/  plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int pipe; TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_4__ {int /*<<< orphan*/  is_yuv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC4(plane_state->base.plane);
	struct drm_i915_private *dev_priv = FUNC3(plane->base.dev);
	const struct drm_framebuffer *fb = plane_state->base.fb;
	enum pipe pipe = plane->pipe;
	u16 gamma[8];
	int i;

	/* Seems RGB data bypasses the gamma always */
	if (!fb->format->is_yuv)
		return;

	FUNC2(gamma);

	/* FIXME these register are single buffered :( */
	/* The two end points are implicit (0.0 and 1.0) */
	for (i = 1; i < 8 - 1; i++)
		FUNC1(FUNC0(pipe, i - 1),
			      gamma[i] << 16 |
			      gamma[i] << 8 |
			      gamma[i]);
}