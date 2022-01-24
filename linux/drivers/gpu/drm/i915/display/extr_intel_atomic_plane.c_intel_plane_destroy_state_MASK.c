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
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,struct drm_plane_state*) ; 
 TYPE_1__* FUNC2 (struct drm_plane_state*) ; 

void
FUNC3(struct drm_plane *plane,
			  struct drm_plane_state *state)
{
	FUNC0(FUNC2(state)->vma);

	FUNC1(plane, state);
}