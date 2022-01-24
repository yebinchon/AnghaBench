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
struct ipu_soc {int dummy; } ;
struct ipu_crtc {int /*<<< orphan*/  di; int /*<<< orphan*/  dc; TYPE_1__* dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_3__* dev; TYPE_2__* state; } ;
struct TYPE_6__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/ * event; int /*<<< orphan*/  active; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct ipu_soc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_crtc*,struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu_soc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipu_soc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct ipu_crtc* FUNC10 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC11(struct drm_crtc *crtc,
				    struct drm_crtc_state *old_crtc_state)
{
	struct ipu_crtc *ipu_crtc = FUNC10(crtc);
	struct ipu_soc *ipu = FUNC0(ipu_crtc->dev->parent);

	FUNC5(ipu_crtc->dc);
	FUNC6(ipu_crtc->di);
	/*
	 * Planes must be disabled before DC clock is removed, as otherwise the
	 * attached IDMACs will be left in undefined state, possibly hanging
	 * the IPU or even system.
	 */
	FUNC3(ipu_crtc, old_crtc_state);
	FUNC4(ipu);
	FUNC7(ipu);

	FUNC2(crtc);

	FUNC8(&crtc->dev->event_lock);
	if (crtc->state->event && !crtc->state->active) {
		FUNC1(crtc, crtc->state->event);
		crtc->state->event = NULL;
	}
	FUNC9(&crtc->dev->event_lock);
}