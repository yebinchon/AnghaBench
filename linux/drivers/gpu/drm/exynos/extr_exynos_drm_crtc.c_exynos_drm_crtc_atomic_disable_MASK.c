#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct exynos_drm_crtc {TYPE_3__* ops; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* disable ) (struct exynos_drm_crtc*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * event; int /*<<< orphan*/  active; } ;
struct TYPE_4__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_drm_crtc*) ; 
 struct exynos_drm_crtc* FUNC5 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
					   struct drm_crtc_state *old_state)
{
	struct exynos_drm_crtc *exynos_crtc = FUNC5(crtc);

	FUNC1(crtc);

	if (exynos_crtc->ops->disable)
		exynos_crtc->ops->disable(exynos_crtc);

	if (crtc->state->event && !crtc->state->active) {
		FUNC2(&crtc->dev->event_lock);
		FUNC0(crtc, crtc->state->event);
		FUNC3(&crtc->dev->event_lock);

		crtc->state->event = NULL;
	}
}