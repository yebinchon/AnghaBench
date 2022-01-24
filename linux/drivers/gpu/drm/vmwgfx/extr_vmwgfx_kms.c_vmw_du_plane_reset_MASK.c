#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vmw_plane_state {int /*<<< orphan*/  base; } ;
struct drm_plane {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 struct vmw_plane_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,scalar_t__) ; 

void FUNC4(struct drm_plane *plane)
{
	struct vmw_plane_state *vps;


	if (plane->state)
		FUNC3(plane, plane->state);

	vps = FUNC2(sizeof(*vps), GFP_KERNEL);

	if (!vps) {
		FUNC0("Cannot allocate vmw_plane_state\n");
		return;
	}

	FUNC1(plane, &vps->base);
}