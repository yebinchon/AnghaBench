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
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_private {int capabilities; scalar_t__ io_start; } ;
struct drm_device {int irq_enabled; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int SVGA_CAP_IRQMASK ; 
 int /*<<< orphan*/  SVGA_REG_IRQMASK ; 
 scalar_t__ VMWGFX_IRQSTATUS_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct vmw_private* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct drm_device *dev)
{
	struct vmw_private *dev_priv = FUNC3(dev);
	uint32_t status;

	if (!(dev_priv->capabilities & SVGA_CAP_IRQMASK))
		return;

	if (!dev->irq_enabled)
		return;

	FUNC4(dev_priv, SVGA_REG_IRQMASK, 0);

	status = FUNC1(dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);
	FUNC2(status, dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);

	dev->irq_enabled = false;
	FUNC0(dev->irq, dev);
}