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
struct TYPE_4__ {scalar_t__ allocated; } ;
struct vc4_plane_state {int /*<<< orphan*/  base; struct drm_plane_state* dlist; TYPE_2__ lbm; } ;
struct vc4_dev {TYPE_1__* hvs; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  mm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vc4_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct vc4_plane_state* FUNC6 (struct drm_plane_state*) ; 

__attribute__((used)) static void FUNC7(struct drm_plane *plane,
				    struct drm_plane_state *state)
{
	struct vc4_dev *vc4 = FUNC5(plane->dev);
	struct vc4_plane_state *vc4_state = FUNC6(state);

	if (vc4_state->lbm.allocated) {
		unsigned long irqflags;

		FUNC3(&vc4->hvs->mm_lock, irqflags);
		FUNC1(&vc4_state->lbm);
		FUNC4(&vc4->hvs->mm_lock, irqflags);
	}

	FUNC2(vc4_state->dlist);
	FUNC0(&vc4_state->base);
	FUNC2(state);
}