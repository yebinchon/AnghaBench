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
struct TYPE_2__ {int /*<<< orphan*/  visible; } ;
struct intel_plane_state {int /*<<< orphan*/  ctl; TYPE_1__ base; } ;
struct intel_crtc_state {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_HELPER_NO_SCALING ; 
 int FUNC0 (struct intel_plane_state*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct intel_plane_state*) ; 
 int FUNC3 (struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state*,struct intel_plane_state*) ; 

__attribute__((used)) static int
FUNC5(struct intel_crtc_state *crtc_state,
		 struct intel_plane_state *plane_state)
{
	int ret;

	ret = FUNC0(plane_state);
	if (ret)
		return ret;

	ret = FUNC1(&plane_state->base,
						  &crtc_state->base,
						  DRM_PLANE_HELPER_NO_SCALING,
						  DRM_PLANE_HELPER_NO_SCALING,
						  true, true);
	if (ret)
		return ret;

	ret = FUNC2(plane_state);
	if (ret)
		return ret;

	if (!plane_state->base.visible)
		return 0;

	ret = FUNC3(plane_state);
	if (ret)
		return ret;

	plane_state->ctl = FUNC4(crtc_state, plane_state);

	return 0;
}