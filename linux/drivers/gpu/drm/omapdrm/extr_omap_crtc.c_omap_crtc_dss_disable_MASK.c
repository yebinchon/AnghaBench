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
struct omap_drm_private {TYPE_1__** channels; } ;
struct omap_crtc {int /*<<< orphan*/  base; } ;
struct drm_crtc {int dummy; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct omap_crtc* FUNC1 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC2(struct omap_drm_private *priv,
				  enum omap_channel channel)
{
	struct drm_crtc *crtc = priv->channels[channel]->crtc;
	struct omap_crtc *omap_crtc = FUNC1(crtc);

	FUNC0(&omap_crtc->base, false);
}