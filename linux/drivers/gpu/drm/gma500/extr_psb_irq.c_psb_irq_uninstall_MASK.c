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
struct drm_psb_private {int vdc_irq_mask; int /*<<< orphan*/  irqmask_lock; TYPE_1__* ops; } ;
struct drm_device {TYPE_2__* vblank; struct drm_psb_private* dev_private; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* hotplug_enable ) (struct drm_device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PIPE_VBLANK_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  PSB_HWSTAM ; 
 int /*<<< orphan*/  PSB_INT_ENABLE_R ; 
 int /*<<< orphan*/  PSB_INT_IDENTITY_R ; 
 int /*<<< orphan*/  PSB_INT_MASK_R ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int _LNC_IRQ_TOPAZ_FLAG ; 
 int _PSB_IRQ_MSVDX_FLAG ; 
 int _PSB_IRQ_SGX_FLAG ; 
 int /*<<< orphan*/  FUNC2 (struct drm_psb_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	unsigned long irqflags;

	FUNC3(&dev_priv->irqmask_lock, irqflags);

	if (dev_priv->ops->hotplug_enable)
		dev_priv->ops->hotplug_enable(dev, false);

	FUNC1(0xFFFFFFFF, PSB_HWSTAM);

	if (dev->vblank[0].enabled)
		FUNC2(dev_priv, 0, PIPE_VBLANK_INTERRUPT_ENABLE);

	if (dev->vblank[1].enabled)
		FUNC2(dev_priv, 1, PIPE_VBLANK_INTERRUPT_ENABLE);

	if (dev->vblank[2].enabled)
		FUNC2(dev_priv, 2, PIPE_VBLANK_INTERRUPT_ENABLE);

	dev_priv->vdc_irq_mask &= _PSB_IRQ_SGX_FLAG |
				  _PSB_IRQ_MSVDX_FLAG |
				  _LNC_IRQ_TOPAZ_FLAG;

	/* These two registers are safe even if display island is off */
	FUNC1(~dev_priv->vdc_irq_mask, PSB_INT_MASK_R);
	FUNC1(dev_priv->vdc_irq_mask, PSB_INT_ENABLE_R);

	FUNC6();

	/* This register is safe even if display island is off */
	FUNC1(FUNC0(PSB_INT_IDENTITY_R), PSB_INT_IDENTITY_R);
	FUNC4(&dev_priv->irqmask_lock, irqflags);
}