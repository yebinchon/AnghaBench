#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_psb_private {int /*<<< orphan*/  irqmask_lock; int /*<<< orphan*/  vdc_irq_mask; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  PIPE_VBLANK_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  PSB_INT_ENABLE_R ; 
 int /*<<< orphan*/  PSB_INT_MASK_R ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _PSB_VSYNC_PIPEA_FLAG ; 
 int /*<<< orphan*/  _PSB_VSYNC_PIPEB_FLAG ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_psb_private*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct drm_device *dev, unsigned int pipe)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	unsigned long irqflags;

	if (FUNC0(dev))
		FUNC2(dev, pipe);
	FUNC4(&dev_priv->irqmask_lock, irqflags);

	if (pipe == 0)
		dev_priv->vdc_irq_mask &= ~_PSB_VSYNC_PIPEA_FLAG;
	else if (pipe == 1)
		dev_priv->vdc_irq_mask &= ~_PSB_VSYNC_PIPEB_FLAG;

	FUNC1(~dev_priv->vdc_irq_mask, PSB_INT_MASK_R);
	FUNC1(dev_priv->vdc_irq_mask, PSB_INT_ENABLE_R);
	FUNC3(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_ENABLE);

	FUNC5(&dev_priv->irqmask_lock, irqflags);
}