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
struct TYPE_4__ {TYPE_1__* man; } ;
struct vmw_private {int /*<<< orphan*/  reservation_sem; int /*<<< orphan*/  svga_lock; TYPE_2__ bdev; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int use_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SVGA_REG_ENABLE ; 
 int SVGA_REG_ENABLE_ENABLE ; 
 int SVGA_REG_ENABLE_HIDE ; 
 size_t TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_private*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct vmw_private *dev_priv)
{
	/*
	 * Disabling SVGA will turn off device modesetting capabilities, so
	 * notify KMS about that so that it doesn't cache atomic state that
	 * isn't valid anymore, for example crtcs turned on.
	 * Strictly we'd want to do this under the SVGA lock (or an SVGA mutex),
	 * but vmw_kms_lost_device() takes the reservation sem and thus we'll
	 * end up with lock order reversal. Thus, a master may actually perform
	 * a new modeset just after we call vmw_kms_lost_device() and race with
	 * vmw_svga_disable(), but that should at worst cause atomic KMS state
	 * to be inconsistent with the device, causing modesetting problems.
	 *
	 */
	FUNC6(dev_priv->dev);
	FUNC4(&dev_priv->reservation_sem, false);
	FUNC1(&dev_priv->svga_lock);
	if (dev_priv->bdev.man[TTM_PL_VRAM].use_type) {
		dev_priv->bdev.man[TTM_PL_VRAM].use_type = false;
		FUNC2(&dev_priv->svga_lock);
		if (FUNC3(&dev_priv->bdev, TTM_PL_VRAM))
			FUNC0("Failed evicting VRAM buffers.\n");
		FUNC7(dev_priv, SVGA_REG_ENABLE,
			  SVGA_REG_ENABLE_HIDE |
			  SVGA_REG_ENABLE_ENABLE);
	} else
		FUNC2(&dev_priv->svga_lock);
	FUNC5(&dev_priv->reservation_sem);
}