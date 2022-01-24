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
struct TYPE_4__ {int osd1_enabled; int osd1_commit; int vd1_enabled; int vd1_commit; } ;
struct meson_drm {TYPE_1__ viu; } ;
struct meson_crtc {struct meson_drm* priv; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_3__* state; TYPE_2__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * event; int /*<<< orphan*/  active; } ;
struct TYPE_5__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct meson_crtc* FUNC5 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
					   struct drm_crtc_state *old_state)
{
	struct meson_crtc *meson_crtc = FUNC5(crtc);
	struct meson_drm *priv = meson_crtc->priv;

	FUNC0("\n");

	FUNC2(crtc);

	priv->viu.osd1_enabled = false;
	priv->viu.osd1_commit = false;

	priv->viu.vd1_enabled = false;
	priv->viu.vd1_commit = false;

	if (crtc->state->event && !crtc->state->active) {
		FUNC3(&crtc->dev->event_lock);
		FUNC1(crtc, crtc->state->event);
		FUNC4(&crtc->dev->event_lock);

		crtc->state->event = NULL;
	}
}