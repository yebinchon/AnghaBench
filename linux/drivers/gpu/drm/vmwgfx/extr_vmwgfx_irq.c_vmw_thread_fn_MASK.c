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
struct vmw_private {int /*<<< orphan*/  cman; int /*<<< orphan*/  irqthread_pending; int /*<<< orphan*/  fence_queue; int /*<<< orphan*/  fman; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  VMW_IRQTHREAD_CMDBUF ; 
 int /*<<< orphan*/  VMW_IRQTHREAD_FENCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vmw_private* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *arg)
{
	struct drm_device *dev = (struct drm_device *)arg;
	struct vmw_private *dev_priv = FUNC3(dev);
	irqreturn_t ret = IRQ_NONE;

	if (FUNC0(VMW_IRQTHREAD_FENCE,
			       dev_priv->irqthread_pending)) {
		FUNC2(dev_priv->fman);
		FUNC4(&dev_priv->fence_queue);
		ret = IRQ_HANDLED;
	}

	if (FUNC0(VMW_IRQTHREAD_CMDBUF,
			       dev_priv->irqthread_pending)) {
		FUNC1(dev_priv->cman);
		ret = IRQ_HANDLED;
	}

	return ret;
}