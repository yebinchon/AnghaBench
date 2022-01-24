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
struct sun4i_crtc {int /*<<< orphan*/  tcon; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * event; int /*<<< orphan*/  active; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 struct sun4i_crtc* FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_encoder* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct drm_encoder*,int) ; 

__attribute__((used)) static void FUNC8(struct drm_crtc *crtc,
				      struct drm_crtc_state *old_state)
{
	struct drm_encoder *encoder = FUNC6(crtc);
	struct sun4i_crtc *scrtc = FUNC2(crtc);

	FUNC0("Disabling the CRTC\n");

	FUNC3(crtc);

	FUNC7(scrtc->tcon, encoder, false);

	if (crtc->state->event && !crtc->state->active) {
		FUNC4(&crtc->dev->event_lock);
		FUNC1(crtc, crtc->state->event);
		FUNC5(&crtc->dev->event_lock);

		crtc->state->event = NULL;
	}
}