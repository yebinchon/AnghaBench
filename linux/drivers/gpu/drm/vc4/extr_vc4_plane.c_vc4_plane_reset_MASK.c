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
struct vc4_plane_state {int /*<<< orphan*/  base; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 struct vc4_plane_state* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *plane)
{
	struct vc4_plane_state *vc4_state;

	FUNC0(plane->state);

	vc4_state = FUNC2(sizeof(*vc4_state), GFP_KERNEL);
	if (!vc4_state)
		return;

	FUNC1(plane, &vc4_state->base);
}