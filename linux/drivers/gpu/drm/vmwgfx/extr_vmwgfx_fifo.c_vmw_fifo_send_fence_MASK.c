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
struct vmw_fifo_state {int capabilities; int /*<<< orphan*/  marker_queue; } ;
struct vmw_private {int /*<<< orphan*/  marker_seq; struct vmw_fifo_state fifo; } ;
struct svga_fifo_cmd_fence {int fence; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  SVGA_CMD_FENCE ; 
 int SVGA_FIFO_CAP_FENCE ; 
 int /*<<< orphan*/ * FUNC0 (struct vmw_private*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_private*,struct vmw_fifo_state*) ; 

int FUNC9(struct vmw_private *dev_priv, uint32_t *seqno)
{
	struct vmw_fifo_state *fifo_state = &dev_priv->fifo;
	struct svga_fifo_cmd_fence *cmd_fence;
	u32 *fm;
	int ret = 0;
	uint32_t bytes = sizeof(u32) + sizeof(*cmd_fence);

	fm = FUNC0(dev_priv, bytes);
	if (FUNC3(fm == NULL)) {
		*seqno = FUNC2(&dev_priv->marker_seq);
		ret = -ENOMEM;
		(void)FUNC4(dev_priv, false, true, *seqno,
					false, 3*HZ);
		goto out_err;
	}

	do {
		*seqno = FUNC1(1, &dev_priv->marker_seq);
	} while (*seqno == 0);

	if (!(fifo_state->capabilities & SVGA_FIFO_CAP_FENCE)) {

		/*
		 * Don't request hardware to send a fence. The
		 * waiting code in vmwgfx_irq.c will emulate this.
		 */

		FUNC5(dev_priv, 0);
		return 0;
	}

	*fm++ = SVGA_CMD_FENCE;
	cmd_fence = (struct svga_fifo_cmd_fence *) fm;
	cmd_fence->fence = *seqno;
	FUNC6(dev_priv, bytes);
	(void) FUNC7(&fifo_state->marker_queue, *seqno);
	FUNC8(dev_priv, fifo_state);

out_err:
	return ret;
}