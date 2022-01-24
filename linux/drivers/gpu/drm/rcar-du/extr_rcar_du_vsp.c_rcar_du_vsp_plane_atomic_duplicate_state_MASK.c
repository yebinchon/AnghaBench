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
struct drm_plane_state {int dummy; } ;
struct rcar_du_vsp_plane_state {struct drm_plane_state state; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,struct drm_plane_state*) ; 
 struct rcar_du_vsp_plane_state* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_plane_state *
FUNC3(struct drm_plane *plane)
{
	struct rcar_du_vsp_plane_state *copy;

	if (FUNC0(!plane->state))
		return NULL;

	copy = FUNC2(sizeof(*copy), GFP_KERNEL);
	if (copy == NULL)
		return NULL;

	FUNC1(plane, &copy->state);

	return &copy->state;
}