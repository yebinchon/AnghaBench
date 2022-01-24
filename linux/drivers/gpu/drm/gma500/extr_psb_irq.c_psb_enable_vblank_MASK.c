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
typedef  int uint32_t ;
struct drm_psb_private {int /*<<< orphan*/  irqmask_lock; int /*<<< orphan*/  vdc_irq_mask; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int PIPEACONF_ENABLE ; 
 int /*<<< orphan*/  PIPE_VBLANK_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  PSB_INT_ENABLE_R ; 
 int /*<<< orphan*/  PSB_INT_MASK_R ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  _PSB_VSYNC_PIPEA_FLAG ; 
 int /*<<< orphan*/  _PSB_VSYNC_PIPEB_FLAG ; 
 scalar_t__ FUNC3 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_psb_private*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(struct drm_device *dev, unsigned int pipe)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	unsigned long irqflags;
	uint32_t reg_val = 0;
	uint32_t pipeconf_reg = FUNC6(pipe);

	/* Medfield is different - we should perhaps extract out vblank
	   and blacklight etc ops */
	if (FUNC0(dev))
		return FUNC5(dev, pipe);

	if (FUNC3(dev, false)) {
		reg_val = FUNC2(pipeconf_reg);
		FUNC4(dev);
	}

	if (!(reg_val & PIPEACONF_ENABLE))
		return -EINVAL;

	FUNC8(&dev_priv->irqmask_lock, irqflags);

	if (pipe == 0)
		dev_priv->vdc_irq_mask |= _PSB_VSYNC_PIPEA_FLAG;
	else if (pipe == 1)
		dev_priv->vdc_irq_mask |= _PSB_VSYNC_PIPEB_FLAG;

	FUNC1(~dev_priv->vdc_irq_mask, PSB_INT_MASK_R);
	FUNC1(dev_priv->vdc_irq_mask, PSB_INT_ENABLE_R);
	FUNC7(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_ENABLE);

	FUNC9(&dev_priv->irqmask_lock, irqflags);

	return 0;
}