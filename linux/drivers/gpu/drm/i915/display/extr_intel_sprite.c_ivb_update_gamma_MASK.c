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
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  plane; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC6(plane_state->base.plane);
	struct drm_i915_private *dev_priv = FUNC5(plane->base.dev);
	enum pipe pipe = plane->pipe;
	u16 gamma[18];
	int i;

	FUNC4(gamma);

	/* FIXME these register are single buffered :( */
	for (i = 0; i < 16; i++)
		FUNC0(FUNC1(pipe, i),
			      gamma[i] << 20 |
			      gamma[i] << 10 |
			      gamma[i]);

	FUNC0(FUNC2(pipe, 0), gamma[i]);
	FUNC0(FUNC2(pipe, 1), gamma[i]);
	FUNC0(FUNC2(pipe, 2), gamma[i]);
	i++;

	FUNC0(FUNC3(pipe, 0), gamma[i]);
	FUNC0(FUNC3(pipe, 1), gamma[i]);
	FUNC0(FUNC3(pipe, 2), gamma[i]);
	i++;
}