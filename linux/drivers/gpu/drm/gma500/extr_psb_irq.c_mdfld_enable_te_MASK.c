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
struct drm_psb_private {int /*<<< orphan*/  irqmask_lock; } ;
struct drm_device {scalar_t__ dev_private; } ;

/* Variables and functions */
 int EINVAL ; 
 int PIPEACONF_ENABLE ; 
 int /*<<< orphan*/  PIPE_TE_ENABLE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_psb_private*,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_psb_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct drm_device *dev, int pipe)
{
	struct drm_psb_private *dev_priv =
		(struct drm_psb_private *) dev->dev_private;
	unsigned long irqflags;
	uint32_t reg_val = 0;
	uint32_t pipeconf_reg = FUNC4(pipe);

	if (FUNC1(dev, false)) {
		reg_val = FUNC0(pipeconf_reg);
		FUNC2(dev);
	}

	if (!(reg_val & PIPEACONF_ENABLE))
		return -EINVAL;

	FUNC6(&dev_priv->irqmask_lock, irqflags);

	FUNC3(dev_priv, pipe);
	FUNC5(dev_priv, pipe, PIPE_TE_ENABLE);

	FUNC7(&dev_priv->irqmask_lock, irqflags);

	return 0;
}