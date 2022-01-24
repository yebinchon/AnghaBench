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
struct omap_drm_private {TYPE_1__** channels; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct omap_crtc {void (* framedone_handler ) (void*) ;void* framedone_handler_data; int /*<<< orphan*/  name; TYPE_2__ base; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc {int dummy; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_3__ {struct drm_crtc* crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct omap_crtc* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC3(
		struct omap_drm_private *priv, enum omap_channel channel,
		void (*handler)(void *), void *data)
{
	struct drm_crtc *crtc = priv->channels[channel]->crtc;
	struct omap_crtc *omap_crtc = FUNC2(crtc);
	struct drm_device *dev = omap_crtc->base.dev;

	FUNC1(dev->dev, "unregister framedone %s", omap_crtc->name);

	FUNC0(omap_crtc->framedone_handler != handler);
	FUNC0(omap_crtc->framedone_handler_data != data);

	omap_crtc->framedone_handler = NULL;
	omap_crtc->framedone_handler_data = NULL;
}