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
struct drm_psb_private {int /*<<< orphan*/  rpm_enabled; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_mode_set {TYPE_1__* crtc; } ;
struct drm_device {TYPE_2__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct drm_device* dev; } ;

/* Variables and functions */
 int FUNC0 (struct drm_mode_set*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_mode_set *set,
			struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_device *dev = set->crtc->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	int ret;

	if (!dev_priv->rpm_enabled)
		return FUNC0(set, ctx);

	FUNC2(&dev->pdev->dev);
	ret = FUNC0(set, ctx);
	FUNC1(&dev->pdev->dev);

	return ret;
}