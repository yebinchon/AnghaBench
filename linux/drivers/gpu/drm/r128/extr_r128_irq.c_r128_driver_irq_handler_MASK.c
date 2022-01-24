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
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  vbl_received; } ;
typedef  TYPE_1__ drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int R128_CRTC_VBLANK_INT ; 
 int /*<<< orphan*/  R128_CRTC_VBLANK_INT_AK ; 
 int /*<<< orphan*/  R128_GEN_INT_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC4(int irq, void *arg)
{
	struct drm_device *dev = (struct drm_device *) arg;
	drm_r128_private_t *dev_priv = (drm_r128_private_t *) dev->dev_private;
	int status;

	status = FUNC0(R128_GEN_INT_STATUS);

	/* VBLANK interrupt */
	if (status & R128_CRTC_VBLANK_INT) {
		FUNC1(R128_GEN_INT_STATUS, R128_CRTC_VBLANK_INT_AK);
		FUNC2(&dev_priv->vbl_received);
		FUNC3(dev, 0);
		return IRQ_HANDLED;
	}
	return IRQ_NONE;
}