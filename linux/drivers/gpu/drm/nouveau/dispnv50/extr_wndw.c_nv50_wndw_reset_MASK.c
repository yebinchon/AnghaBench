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
struct nv50_wndw_atom {int /*<<< orphan*/  state; } ;
struct drm_plane {TYPE_2__* state; TYPE_1__* funcs; } ;
struct TYPE_4__ {void* normalized_zpos; void* zpos; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* atomic_destroy_state ) (struct drm_plane*,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 struct nv50_wndw_atom* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_plane*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(struct drm_plane *plane)
{
	struct nv50_wndw_atom *asyw;

	if (FUNC0(!(asyw = FUNC2(sizeof(*asyw), GFP_KERNEL))))
		return;

	if (plane->state)
		plane->funcs->atomic_destroy_state(plane, plane->state);

	FUNC1(plane, &asyw->state);
	plane->state->zpos = FUNC3(plane);
	plane->state->normalized_zpos = FUNC3(plane);
}