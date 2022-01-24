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
struct omap_crtc {int pending; int /*<<< orphan*/ * event; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_2__ {int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct omap_crtc* FUNC1 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC2(struct drm_crtc *crtc)
{
	struct omap_crtc *omap_crtc = FUNC1(crtc);

	FUNC0(omap_crtc->pending);
	omap_crtc->pending = true;

	if (crtc->state->event) {
		omap_crtc->event = crtc->state->event;
		crtc->state->event = NULL;
	}
}