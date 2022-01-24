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
struct vc4_dev {TYPE_1__* hvs; } ;
struct TYPE_4__ {scalar_t__ allocated; } ;
struct vc4_crtc_state {TYPE_2__ mm; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  mm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vc4_crtc_state* FUNC4 (struct drm_crtc_state*) ; 
 struct vc4_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
				   struct drm_crtc_state *state)
{
	struct vc4_dev *vc4 = FUNC5(crtc->dev);
	struct vc4_crtc_state *vc4_state = FUNC4(state);

	if (vc4_state->mm.allocated) {
		unsigned long flags;

		FUNC2(&vc4->hvs->mm_lock, flags);
		FUNC1(&vc4_state->mm);
		FUNC3(&vc4->hvs->mm_lock, flags);

	}

	FUNC0(crtc, state);
}