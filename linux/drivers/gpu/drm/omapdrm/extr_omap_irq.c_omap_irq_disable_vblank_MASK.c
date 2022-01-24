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
struct omap_drm_private {int /*<<< orphan*/  wait_lock; int /*<<< orphan*/  dispc; TYPE_1__* dispc_ops; int /*<<< orphan*/  irq_mask; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int /*<<< orphan*/  (* mgr_get_vsync_irq ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct drm_device*,int) ; 
 int FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct omap_drm_private *priv = dev->dev_private;
	unsigned long flags;
	enum omap_channel channel = FUNC1(crtc);

	FUNC0("dev=%p, crtc=%u", dev, channel);

	FUNC3(&priv->wait_lock, flags);
	priv->irq_mask &= ~priv->dispc_ops->mgr_get_vsync_irq(priv->dispc,
							      channel);
	FUNC2(dev);
	FUNC4(&priv->wait_lock, flags);
}