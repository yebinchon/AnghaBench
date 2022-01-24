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
struct zx_plane {int dummy; } ;
struct drm_plane {int type; TYPE_1__* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
#define  DRM_PLANE_TYPE_OVERLAY 129 
#define  DRM_PLANE_TYPE_PRIMARY 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 struct zx_plane* FUNC1 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC2 (struct zx_plane*) ; 
 int /*<<< orphan*/  FUNC3 (struct zx_plane*) ; 
 int /*<<< orphan*/  FUNC4 (struct zx_plane*) ; 
 int /*<<< orphan*/  FUNC5 (struct zx_plane*) ; 

void FUNC6(struct drm_plane *plane)
{
	struct zx_plane *zplane = FUNC1(plane);

	/* Do nothing if the plane is not enabled */
	if (!plane->state->crtc)
		return;

	switch (plane->type) {
	case DRM_PLANE_TYPE_PRIMARY:
		FUNC2(zplane);
		FUNC3(zplane);
		break;
	case DRM_PLANE_TYPE_OVERLAY:
		FUNC4(zplane);
		FUNC5(zplane);
		break;
	default:
		FUNC0(1, "unsupported plane type %d\n", plane->type);
	}
}