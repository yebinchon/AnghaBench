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
struct omap_drm_private {int /*<<< orphan*/  dispc; TYPE_2__* dispc_ops; } ;
struct omap_crtc {int /*<<< orphan*/  update_work; int /*<<< orphan*/  name; } ;
struct drm_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  event_lock; struct omap_drm_private* dev_private; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; TYPE_1__* state; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* runtime_put ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct omap_crtc* FUNC9 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC10(struct drm_crtc *crtc,
				     struct drm_crtc_state *old_state)
{
	struct omap_drm_private *priv = crtc->dev->dev_private;
	struct omap_crtc *omap_crtc = FUNC9(crtc);
	struct drm_device *dev = crtc->dev;

	FUNC0("%s", omap_crtc->name);

	FUNC6(&crtc->dev->event_lock);
	if (crtc->state->event) {
		FUNC3(crtc, crtc->state->event);
		crtc->state->event = NULL;
	}
	FUNC7(&crtc->dev->event_lock);

	FUNC1(&omap_crtc->update_work);

	if (!FUNC5(crtc))
		FUNC2(dev->dev, "manual display update did not finish!");

	FUNC4(crtc);

	priv->dispc_ops->runtime_put(priv->dispc);
}