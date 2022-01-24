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
typedef  int /*<<< orphan*/  u32 ;
struct vmw_fifo_state {int /*<<< orphan*/  rwsem; } ;
struct vmw_private {int /*<<< orphan*/  fence_queue; int /*<<< orphan*/ * mmio_virt; int /*<<< orphan*/  marker_seq; scalar_t__ cman; struct vmw_fifo_state fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ERESTARTSYS ; 
 int HZ ; 
 int SVGA_FIFO_FENCE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __wait ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (scalar_t__,int,int) ; 
 int FUNC13 (struct vmw_private*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct vmw_private*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct vmw_private *dev_priv,
		      bool lazy,
		      bool fifo_idle,
		      uint32_t seqno,
		      bool interruptible,
		      unsigned long timeout)
{
	struct vmw_fifo_state *fifo_state = &dev_priv->fifo;

	uint32_t count = 0;
	uint32_t signal_seq;
	int ret;
	unsigned long end_jiffies = jiffies + timeout;
	bool (*wait_condition)(struct vmw_private *, uint32_t);
	FUNC0(__wait);

	wait_condition = (fifo_idle) ? &vmw_fifo_idle :
		&vmw_seqno_passed;

	/**
	 * Block command submission while waiting for idle.
	 */

	if (fifo_idle) {
		FUNC4(&fifo_state->rwsem);
		if (dev_priv->cman) {
			ret = FUNC12(dev_priv->cman, interruptible,
					      10*HZ);
			if (ret)
				goto out_err;
		}
	}

	signal_seq = FUNC3(&dev_priv->marker_seq);
	ret = 0;

	for (;;) {
		FUNC6(&dev_priv->fence_queue, &__wait,
				(interruptible) ?
				TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
		if (wait_condition(dev_priv, seqno))
			break;
		if (FUNC10(jiffies, end_jiffies)) {
			FUNC1("SVGA device lockup.\n");
			break;
		}
		if (lazy)
			FUNC8(1);
		else if ((++count & 0x0F) == 0) {
			/**
			 * FIXME: Use schedule_hr_timeout here for
			 * newer kernels and lower CPU utilization.
			 */

			FUNC2(TASK_RUNNING);
			FUNC7();
			FUNC2((interruptible) ?
					    TASK_INTERRUPTIBLE :
					    TASK_UNINTERRUPTIBLE);
		}
		if (interruptible && FUNC9(current)) {
			ret = -ERESTARTSYS;
			break;
		}
	}
	FUNC5(&dev_priv->fence_queue, &__wait);
	if (ret == 0 && fifo_idle) {
		u32 *fifo_mem = dev_priv->mmio_virt;

		FUNC14(signal_seq, fifo_mem + SVGA_FIFO_FENCE);
	}
	FUNC16(&dev_priv->fence_queue);
out_err:
	if (fifo_idle)
		FUNC11(&fifo_state->rwsem);

	return ret;
}