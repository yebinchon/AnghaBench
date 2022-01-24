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
struct sun4i_layer_state {struct drm_plane_state state; int /*<<< orphan*/  uses_frontend; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_plane*,struct drm_plane_state*) ; 
 struct sun4i_layer_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct sun4i_layer_state* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_plane_state *
FUNC3(struct drm_plane *plane)
{
	struct sun4i_layer_state *orig = FUNC2(plane->state);
	struct sun4i_layer_state *copy;

	copy = FUNC1(sizeof(*copy), GFP_KERNEL);
	if (!copy)
		return NULL;

	FUNC0(plane, &copy->state);
	copy->uses_frontend = orig->uses_frontend;

	return &copy->state;
}