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
struct vmw_private {int /*<<< orphan*/  traces_state; int /*<<< orphan*/  enable_state; int /*<<< orphan*/  config_done_state; int /*<<< orphan*/  last_read_seqno; int /*<<< orphan*/ * mmio_virt; } ;
struct vmw_fifo_state {int /*<<< orphan*/ * dynamic_buffer; int /*<<< orphan*/ * static_buffer; int /*<<< orphan*/  marker_queue; } ;

/* Variables and functions */
 int SVGA_FIFO_FENCE ; 
 int /*<<< orphan*/  SVGA_REG_BUSY ; 
 int /*<<< orphan*/  SVGA_REG_CONFIG_DONE ; 
 int /*<<< orphan*/  SVGA_REG_ENABLE ; 
 int /*<<< orphan*/  SVGA_REG_SYNC ; 
 int /*<<< orphan*/  SVGA_REG_TRACES ; 
 int /*<<< orphan*/  SVGA_SYNC_GENERIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct vmw_private *dev_priv, struct vmw_fifo_state *fifo)
{
	u32  *fifo_mem = dev_priv->mmio_virt;

	FUNC5(dev_priv, SVGA_REG_SYNC, SVGA_SYNC_GENERIC);
	while (FUNC4(dev_priv, SVGA_REG_BUSY) != 0)
		;

	dev_priv->last_read_seqno = FUNC3(fifo_mem + SVGA_FIFO_FENCE);

	FUNC5(dev_priv, SVGA_REG_CONFIG_DONE,
		  dev_priv->config_done_state);
	FUNC5(dev_priv, SVGA_REG_ENABLE,
		  dev_priv->enable_state);
	FUNC5(dev_priv, SVGA_REG_TRACES,
		  dev_priv->traces_state);

	FUNC2(&fifo->marker_queue);

	if (FUNC0(fifo->static_buffer != NULL)) {
		FUNC1(fifo->static_buffer);
		fifo->static_buffer = NULL;
	}

	if (FUNC0(fifo->dynamic_buffer != NULL)) {
		FUNC1(fifo->dynamic_buffer);
		fifo->dynamic_buffer = NULL;
	}
}