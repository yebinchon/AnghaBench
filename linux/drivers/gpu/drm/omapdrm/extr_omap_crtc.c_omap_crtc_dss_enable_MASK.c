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
struct omap_drm_private {int /*<<< orphan*/  dispc; TYPE_2__* dispc_ops; TYPE_1__** channels; } ;
struct omap_crtc {int /*<<< orphan*/  base; int /*<<< orphan*/  vm; int /*<<< orphan*/  channel; } ;
struct drm_crtc {int dummy; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_4__ {int /*<<< orphan*/  (* mgr_set_timings ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {struct drm_crtc* crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct omap_crtc* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC3(struct omap_drm_private *priv,
				enum omap_channel channel)
{
	struct drm_crtc *crtc = priv->channels[channel]->crtc;
	struct omap_crtc *omap_crtc = FUNC2(crtc);

	priv->dispc_ops->mgr_set_timings(priv->dispc, omap_crtc->channel,
					 &omap_crtc->vm);
	FUNC0(&omap_crtc->base, true);

	return 0;
}