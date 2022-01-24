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
struct omap_drm_private {int /*<<< orphan*/  dispc; TYPE_2__* dispc_ops; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct omap_crtc {int pending; int /*<<< orphan*/  name; int /*<<< orphan*/  pending_wait; int /*<<< orphan*/ * event; int /*<<< orphan*/  channel; TYPE_1__ base; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct drm_crtc {TYPE_3__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_5__ {scalar_t__ (* mgr_go_busy ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_crtc* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct drm_crtc *crtc)
{
	struct omap_crtc *omap_crtc = FUNC6(crtc);
	struct drm_device *dev = omap_crtc->base.dev;
	struct omap_drm_private *priv = dev->dev_private;
	bool pending;

	FUNC3(&crtc->dev->event_lock);
	/*
	 * If the dispc is busy we're racing the flush operation. Try again on
	 * the next vblank interrupt.
	 */
	if (priv->dispc_ops->mgr_go_busy(priv->dispc, omap_crtc->channel)) {
		FUNC4(&crtc->dev->event_lock);
		return;
	}

	/* Send the vblank event if one has been requested. */
	if (omap_crtc->event) {
		FUNC1(crtc, omap_crtc->event);
		omap_crtc->event = NULL;
	}

	pending = omap_crtc->pending;
	omap_crtc->pending = false;
	FUNC4(&crtc->dev->event_lock);

	if (pending)
		FUNC2(crtc);

	/* Wake up omap_atomic_complete. */
	FUNC7(&omap_crtc->pending_wait);

	FUNC0("%s: apply done", omap_crtc->name);
}