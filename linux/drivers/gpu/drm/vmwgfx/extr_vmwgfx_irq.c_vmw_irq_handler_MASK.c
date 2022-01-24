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
struct vmw_private {int /*<<< orphan*/  irqthread_pending; int /*<<< orphan*/  fifo_queue; scalar_t__ io_start; int /*<<< orphan*/  irq_mask; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SVGA_IRQFLAG_ANY_FENCE ; 
 int SVGA_IRQFLAG_COMMAND_BUFFER ; 
 int SVGA_IRQFLAG_ERROR ; 
 int SVGA_IRQFLAG_FENCE_GOAL ; 
 int SVGA_IRQFLAG_FIFO_PROGRESS ; 
 scalar_t__ VMWGFX_IRQSTATUS_PORT ; 
 int /*<<< orphan*/  VMW_IRQTHREAD_CMDBUF ; 
 int /*<<< orphan*/  VMW_IRQTHREAD_FENCE ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmw_private* FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *arg)
{
	struct drm_device *dev = (struct drm_device *)arg;
	struct vmw_private *dev_priv = FUNC5(dev);
	uint32_t status, masked_status;
	irqreturn_t ret = IRQ_HANDLED;

	status = FUNC1(dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);
	masked_status = status & FUNC0(dev_priv->irq_mask);

	if (FUNC2(status))
		FUNC3(status, dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);

	if (!status)
		return IRQ_NONE;

	if (masked_status & SVGA_IRQFLAG_FIFO_PROGRESS)
		FUNC6(&dev_priv->fifo_queue);

	if ((masked_status & (SVGA_IRQFLAG_ANY_FENCE |
			      SVGA_IRQFLAG_FENCE_GOAL)) &&
	    !FUNC4(VMW_IRQTHREAD_FENCE, dev_priv->irqthread_pending))
		ret = IRQ_WAKE_THREAD;

	if ((masked_status & (SVGA_IRQFLAG_COMMAND_BUFFER |
			      SVGA_IRQFLAG_ERROR)) &&
	    !FUNC4(VMW_IRQTHREAD_CMDBUF,
			      dev_priv->irqthread_pending))
		ret = IRQ_WAKE_THREAD;

	return ret;
}