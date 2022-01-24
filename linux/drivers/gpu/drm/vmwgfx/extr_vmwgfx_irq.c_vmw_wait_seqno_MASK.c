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
typedef  scalar_t__ uint32_t ;
struct vmw_fifo_state {int capabilities; } ;
struct vmw_private {scalar_t__ last_read_seqno; int capabilities; int /*<<< orphan*/  fence_queue; struct vmw_fifo_state fifo; } ;

/* Variables and functions */
 long EBUSY ; 
 int SVGA_CAP_IRQMASK ; 
 int SVGA_FIFO_CAP_FENCE ; 
 int /*<<< orphan*/  SVGA_SYNC_GENERIC ; 
 scalar_t__ VMW_FENCE_WRAP ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct vmw_private*,int,int,scalar_t__,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vmw_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_private*) ; 
 long FUNC7 (int /*<<< orphan*/ ,int,unsigned long) ; 
 long FUNC8 (int /*<<< orphan*/ ,int,unsigned long) ; 

int FUNC9(struct vmw_private *dev_priv,
		      bool lazy, uint32_t seqno,
		      bool interruptible, unsigned long timeout)
{
	long ret;
	struct vmw_fifo_state *fifo = &dev_priv->fifo;

	if (FUNC0(dev_priv->last_read_seqno - seqno < VMW_FENCE_WRAP))
		return 0;

	if (FUNC0(FUNC4(dev_priv, seqno)))
		return 0;

	FUNC3(dev_priv, SVGA_SYNC_GENERIC);

	if (!(fifo->capabilities & SVGA_FIFO_CAP_FENCE))
		return FUNC2(dev_priv, lazy, true, seqno,
					 interruptible, timeout);

	if (!(dev_priv->capabilities & SVGA_CAP_IRQMASK))
		return FUNC2(dev_priv, lazy, false, seqno,
					 interruptible, timeout);

	FUNC5(dev_priv);

	if (interruptible)
		ret = FUNC7
		    (dev_priv->fence_queue,
		     FUNC4(dev_priv, seqno),
		     timeout);
	else
		ret = FUNC8
		    (dev_priv->fence_queue,
		     FUNC4(dev_priv, seqno),
		     timeout);

	FUNC6(dev_priv);

	if (FUNC1(ret == 0))
		ret = -EBUSY;
	else if (FUNC0(ret > 0))
		ret = 0;

	return ret;
}