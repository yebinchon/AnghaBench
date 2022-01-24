#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct omap_drm_private {int /*<<< orphan*/  dispc; TYPE_2__* dispc_ops; } ;
struct omap_crtc_state {scalar_t__ manually_updated; } ;
struct omap_crtc {int /*<<< orphan*/  channel; int /*<<< orphan*/  name; int /*<<< orphan*/  enabled; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_3__* dev; TYPE_4__* state; } ;
struct drm_color_lut {int dummy; } ;
struct TYPE_8__ {TYPE_1__* gamma_lut; scalar_t__ color_mgmt_changed; } ;
struct TYPE_7__ {int /*<<< orphan*/  event_lock; struct omap_drm_private* dev_private; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* mgr_go ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* mgr_set_gamma ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_color_lut*,unsigned int) ;} ;
struct TYPE_5__ {int length; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_color_lut*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_crtc* FUNC10 (struct drm_crtc*) ; 
 struct omap_crtc_state* FUNC11 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC12(struct drm_crtc *crtc,
				   struct drm_crtc_state *old_crtc_state)
{
	struct omap_drm_private *priv = crtc->dev->dev_private;
	struct omap_crtc *omap_crtc = FUNC10(crtc);
	struct omap_crtc_state *omap_crtc_state = FUNC11(crtc->state);
	int ret;

	if (crtc->state->color_mgmt_changed) {
		struct drm_color_lut *lut = NULL;
		unsigned int length = 0;

		if (crtc->state->gamma_lut) {
			lut = (struct drm_color_lut *)
				crtc->state->gamma_lut->data;
			length = crtc->state->gamma_lut->length /
				sizeof(*lut);
		}
		priv->dispc_ops->mgr_set_gamma(priv->dispc, omap_crtc->channel,
					       lut, length);
	}

	FUNC5(crtc);

	/* Only flush the CRTC if it is currently enabled. */
	if (!omap_crtc->enabled)
		return;

	FUNC0("%s: GO", omap_crtc->name);

	if (omap_crtc_state->manually_updated) {
		/* send new image for page flips and modeset changes */
		FUNC6(&crtc->dev->event_lock);
		FUNC4(crtc);
		FUNC3(crtc);
		FUNC7(&crtc->dev->event_lock);
		return;
	}

	ret = FUNC2(crtc);
	FUNC1(ret != 0);

	FUNC6(&crtc->dev->event_lock);
	priv->dispc_ops->mgr_go(priv->dispc, omap_crtc->channel);
	FUNC3(crtc);
	FUNC7(&crtc->dev->event_lock);
}