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
typedef  int /*<<< orphan*/  u32 ;
struct vmw_private {int /*<<< orphan*/  waiter_lock; int /*<<< orphan*/  irq_mask; scalar_t__ io_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVGA_REG_IRQMASK ; 
 scalar_t__ VMWGFX_IRQSTATUS_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct vmw_private *dev_priv,
			    u32 flag, int *waiter_count)
{
	FUNC1(&dev_priv->waiter_lock);
	if ((*waiter_count)++ == 0) {
		FUNC0(flag, dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);
		dev_priv->irq_mask |= flag;
		FUNC3(dev_priv, SVGA_REG_IRQMASK, dev_priv->irq_mask);
	}
	FUNC2(&dev_priv->waiter_lock);
}