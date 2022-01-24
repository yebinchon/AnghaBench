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
struct drm_psb_private {int vdc_irq_mask; int /*<<< orphan*/  irqmask_lock; TYPE_2__* ops; } ;
struct drm_device {TYPE_1__* vblank; struct drm_psb_private* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* hotplug_enable ) (struct drm_device*,int) ;} ;
struct TYPE_3__ {scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIPE_VBLANK_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  PSB_CR_EVENT_HOST_ENABLE ; 
 int /*<<< orphan*/  PSB_CR_EVENT_HOST_ENABLE2 ; 
 int /*<<< orphan*/  PSB_HWSTAM ; 
 int /*<<< orphan*/  PSB_INT_ENABLE_R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _PSB_CE2_BIF_REQUESTER_FAULT ; 
 int /*<<< orphan*/  _PSB_CE_TWOD_COMPLETE ; 
 int /*<<< orphan*/  FUNC3 (struct drm_psb_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_psb_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int) ; 

int FUNC8(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	unsigned long irqflags;

	FUNC5(&dev_priv->irqmask_lock, irqflags);

	/* Enable 2D and MMU fault interrupts */
	FUNC1(_PSB_CE2_BIF_REQUESTER_FAULT, PSB_CR_EVENT_HOST_ENABLE2);
	FUNC1(_PSB_CE_TWOD_COMPLETE, PSB_CR_EVENT_HOST_ENABLE);
	FUNC0(PSB_CR_EVENT_HOST_ENABLE); /* Post */

	/* This register is safe even if display island is off */
	FUNC2(dev_priv->vdc_irq_mask, PSB_INT_ENABLE_R);
	FUNC2(0xFFFFFFFF, PSB_HWSTAM);

	if (dev->vblank[0].enabled)
		FUNC4(dev_priv, 0, PIPE_VBLANK_INTERRUPT_ENABLE);
	else
		FUNC3(dev_priv, 0, PIPE_VBLANK_INTERRUPT_ENABLE);

	if (dev->vblank[1].enabled)
		FUNC4(dev_priv, 1, PIPE_VBLANK_INTERRUPT_ENABLE);
	else
		FUNC3(dev_priv, 1, PIPE_VBLANK_INTERRUPT_ENABLE);

	if (dev->vblank[2].enabled)
		FUNC4(dev_priv, 2, PIPE_VBLANK_INTERRUPT_ENABLE);
	else
		FUNC3(dev_priv, 2, PIPE_VBLANK_INTERRUPT_ENABLE);

	if (dev_priv->ops->hotplug_enable)
		dev_priv->ops->hotplug_enable(dev, true);

	FUNC6(&dev_priv->irqmask_lock, irqflags);
	return 0;
}