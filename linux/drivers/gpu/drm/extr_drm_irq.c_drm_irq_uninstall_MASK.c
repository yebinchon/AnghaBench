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
struct drm_vblank_crtc {int /*<<< orphan*/  queue; int /*<<< orphan*/  enabled; } ;
struct drm_device {int irq_enabled; int num_crtcs; int /*<<< orphan*/  irq; TYPE_1__* driver; int /*<<< orphan*/  pdev; int /*<<< orphan*/  vbl_lock; struct drm_vblank_crtc* vblank; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* irq_uninstall ) (struct drm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct drm_device *dev)
{
	unsigned long irqflags;
	bool irq_enabled;
	int i;

	irq_enabled = dev->irq_enabled;
	dev->irq_enabled = false;

	/*
	 * Wake up any waiters so they don't hang. This is just to paper over
	 * issues for UMS drivers which aren't in full control of their
	 * vblank/irq handling. KMS drivers must ensure that vblanks are all
	 * disabled when uninstalling the irq handler.
	 */
	if (dev->num_crtcs) {
		FUNC5(&dev->vbl_lock, irqflags);
		for (i = 0; i < dev->num_crtcs; i++) {
			struct drm_vblank_crtc *vblank = &dev->vblank[i];

			if (!vblank->enabled)
				continue;

			FUNC1(FUNC2(dev, DRIVER_MODESET));

			FUNC3(dev, i);
			FUNC9(&vblank->queue);
		}
		FUNC6(&dev->vbl_lock, irqflags);
	}

	if (!irq_enabled)
		return -EINVAL;

	FUNC0("irq=%d\n", dev->irq);

	if (FUNC2(dev, DRIVER_LEGACY))
		FUNC8(dev->pdev, NULL, NULL, NULL);

	if (dev->driver->irq_uninstall)
		dev->driver->irq_uninstall(dev);

	FUNC4(dev->irq, dev);

	return 0;
}