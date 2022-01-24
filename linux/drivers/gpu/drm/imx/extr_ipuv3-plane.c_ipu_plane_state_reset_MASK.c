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
struct TYPE_2__ {unsigned int zpos; unsigned int normalized_zpos; } ;
struct ipu_plane_state {TYPE_1__ base; } ;
struct drm_plane {scalar_t__ type; int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 scalar_t__ DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_plane_state*) ; 
 struct ipu_plane_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ipu_plane_state* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_plane *plane)
{
	unsigned int zpos = (plane->type == DRM_PLANE_TYPE_PRIMARY) ? 0 : 1;
	struct ipu_plane_state *ipu_state;

	if (plane->state) {
		ipu_state = FUNC4(plane->state);
		FUNC0(plane->state);
		FUNC2(ipu_state);
		plane->state = NULL;
	}

	ipu_state = FUNC3(sizeof(*ipu_state), GFP_KERNEL);

	if (ipu_state) {
		FUNC1(plane, &ipu_state->base);
		ipu_state->base.zpos = zpos;
		ipu_state->base.normalized_zpos = zpos;
	}
}