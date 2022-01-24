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
struct TYPE_2__ {struct drm_plane* plane; scalar_t__ fb; } ;
struct mdp5_plane_state {int alpha; TYPE_1__ base; scalar_t__ zpos; scalar_t__ premultiplied; } ;
struct drm_plane {scalar_t__ type; TYPE_1__* state; } ;

/* Variables and functions */
 scalar_t__ DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ STAGE0 ; 
 scalar_t__ STAGE_BASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mdp5_plane_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct drm_plane *plane)
{
	struct mdp5_plane_state *mdp5_state;

	if (plane->state && plane->state->fb)
		FUNC0(plane->state->fb);

	FUNC2(FUNC4(plane->state));
	mdp5_state = FUNC3(sizeof(*mdp5_state), GFP_KERNEL);

	/* assign default blend parameters */
	mdp5_state->alpha = 255;
	mdp5_state->premultiplied = 0;

	if (plane->type == DRM_PLANE_TYPE_PRIMARY)
		mdp5_state->zpos = STAGE_BASE;
	else
		mdp5_state->zpos = STAGE0 + FUNC1(plane);

	mdp5_state->base.plane = plane;

	plane->state = &mdp5_state->base;
}