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
struct vmw_private {int capabilities; int /*<<< orphan*/  fifo_queue_waiters; int /*<<< orphan*/  fifo_queue; } ;

/* Variables and functions */
 long EBUSY ; 
 int SVGA_CAP_IRQMASK ; 
 int /*<<< orphan*/  SVGA_IRQFLAG_FIFO_PROGRESS ; 
 int /*<<< orphan*/  SVGA_SYNC_FIFOFULL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vmw_private*,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC7 (int /*<<< orphan*/ ,int,unsigned long) ; 
 long FUNC8 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct vmw_private *dev_priv,
			 uint32_t bytes, bool interruptible,
			 unsigned long timeout)
{
	long ret = 1L;

	if (FUNC0(!FUNC2(dev_priv, bytes)))
		return 0;

	FUNC3(dev_priv, SVGA_SYNC_FIFOFULL);
	if (!(dev_priv->capabilities & SVGA_CAP_IRQMASK))
		return FUNC4(dev_priv, bytes,
					   interruptible, timeout);

	FUNC5(dev_priv, SVGA_IRQFLAG_FIFO_PROGRESS,
			       &dev_priv->fifo_queue_waiters);

	if (interruptible)
		ret = FUNC7
		    (dev_priv->fifo_queue,
		     !FUNC2(dev_priv, bytes), timeout);
	else
		ret = FUNC8
		    (dev_priv->fifo_queue,
		     !FUNC2(dev_priv, bytes), timeout);

	if (FUNC1(ret == 0))
		ret = -EBUSY;
	else if (FUNC0(ret > 0))
		ret = 0;

	FUNC6(dev_priv, SVGA_IRQFLAG_FIFO_PROGRESS,
				  &dev_priv->fifo_queue_waiters);

	return ret;
}