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
struct vmw_private {scalar_t__ last_read_seqno; int /*<<< orphan*/  marker_seq; struct vmw_fifo_state fifo; } ;

/* Variables and functions */
 int SVGA_FIFO_CAP_FENCE ; 
 scalar_t__ VMW_FENCE_WRAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct vmw_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*,struct vmw_fifo_state*) ; 

bool FUNC4(struct vmw_private *dev_priv,
			 uint32_t seqno)
{
	struct vmw_fifo_state *fifo_state;
	bool ret;

	if (FUNC1(dev_priv->last_read_seqno - seqno < VMW_FENCE_WRAP))
		return true;

	fifo_state = &dev_priv->fifo;
	FUNC3(dev_priv, fifo_state);
	if (FUNC1(dev_priv->last_read_seqno - seqno < VMW_FENCE_WRAP))
		return true;

	if (!(fifo_state->capabilities & SVGA_FIFO_CAP_FENCE) &&
	    FUNC2(dev_priv, seqno))
		return true;

	/**
	 * Then check if the seqno is higher than what we've actually
	 * emitted. Then the fence is stale and signaled.
	 */

	ret = ((FUNC0(&dev_priv->marker_seq) - seqno)
	       > VMW_FENCE_WRAP);

	return ret;
}