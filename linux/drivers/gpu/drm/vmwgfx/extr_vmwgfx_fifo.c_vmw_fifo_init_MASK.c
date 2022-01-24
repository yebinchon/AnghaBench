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
struct vmw_private {int capabilities; int mmio_size; int last_read_seqno; int /*<<< orphan*/  marker_seq; void* traces_state; void* config_done_state; void* enable_state; int /*<<< orphan*/ * mmio_virt; } ;
struct vmw_fifo_state {int dx; int using_bounce_buffer; int /*<<< orphan*/  marker_queue; void* capabilities; int /*<<< orphan*/  rwsem; int /*<<< orphan*/  fifo_mutex; scalar_t__ reserved_size; int /*<<< orphan*/ * dynamic_buffer; int /*<<< orphan*/ * static_buffer; int /*<<< orphan*/  static_buffer_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,...) ; 
 int ENOMEM ; 
 int PAGE_SIZE ; 
 int SVGA_CAP_EXTENDED_FIFO ; 
 int SVGA_FIFO_BUSY ; 
 int SVGA_FIFO_CAPABILITIES ; 
 int SVGA_FIFO_FENCE ; 
 int SVGA_FIFO_MAX ; 
 int SVGA_FIFO_MIN ; 
 int SVGA_FIFO_NEXT_CMD ; 
 int SVGA_FIFO_STOP ; 
 int /*<<< orphan*/  SVGA_REG_BITS_PER_PIXEL ; 
 int /*<<< orphan*/  SVGA_REG_CONFIG_DONE ; 
 int /*<<< orphan*/  SVGA_REG_ENABLE ; 
 int SVGA_REG_ENABLE_ENABLE ; 
 int SVGA_REG_ENABLE_HIDE ; 
 int /*<<< orphan*/  SVGA_REG_HEIGHT ; 
 int /*<<< orphan*/  SVGA_REG_MEM_REGS ; 
 int /*<<< orphan*/  SVGA_REG_TRACES ; 
 int /*<<< orphan*/  SVGA_REG_WIDTH ; 
 int /*<<< orphan*/  VMWGFX_FIFO_STATIC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 void* FUNC10 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vmw_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(struct vmw_private *dev_priv, struct vmw_fifo_state *fifo)
{
	u32  *fifo_mem = dev_priv->mmio_virt;
	uint32_t max;
	uint32_t min;

	fifo->dx = false;
	fifo->static_buffer_size = VMWGFX_FIFO_STATIC_SIZE;
	fifo->static_buffer = FUNC6(fifo->static_buffer_size);
	if (FUNC5(fifo->static_buffer == NULL))
		return -ENOMEM;

	fifo->dynamic_buffer = NULL;
	fifo->reserved_size = 0;
	fifo->using_bounce_buffer = false;

	FUNC4(&fifo->fifo_mutex);
	FUNC2(&fifo->rwsem);

	FUNC0("width %d\n", FUNC10(dev_priv, SVGA_REG_WIDTH));
	FUNC0("height %d\n", FUNC10(dev_priv, SVGA_REG_HEIGHT));
	FUNC0("bpp %d\n", FUNC10(dev_priv, SVGA_REG_BITS_PER_PIXEL));

	dev_priv->enable_state = FUNC10(dev_priv, SVGA_REG_ENABLE);
	dev_priv->config_done_state = FUNC10(dev_priv, SVGA_REG_CONFIG_DONE);
	dev_priv->traces_state = FUNC10(dev_priv, SVGA_REG_TRACES);

	FUNC11(dev_priv, SVGA_REG_ENABLE, SVGA_REG_ENABLE_ENABLE |
		  SVGA_REG_ENABLE_HIDE);
	FUNC11(dev_priv, SVGA_REG_TRACES, 0);

	min = 4;
	if (dev_priv->capabilities & SVGA_CAP_EXTENDED_FIFO)
		min = FUNC10(dev_priv, SVGA_REG_MEM_REGS);
	min <<= 2;

	if (min < PAGE_SIZE)
		min = PAGE_SIZE;

	FUNC9(min, fifo_mem + SVGA_FIFO_MIN);
	FUNC9(dev_priv->mmio_size, fifo_mem + SVGA_FIFO_MAX);
	FUNC12();
	FUNC9(min,  fifo_mem + SVGA_FIFO_NEXT_CMD);
	FUNC9(min,  fifo_mem + SVGA_FIFO_STOP);
	FUNC9(0, fifo_mem + SVGA_FIFO_BUSY);
	FUNC3();

	FUNC11(dev_priv, SVGA_REG_CONFIG_DONE, 1);

	max = FUNC8(fifo_mem + SVGA_FIFO_MAX);
	min = FUNC8(fifo_mem  + SVGA_FIFO_MIN);
	fifo->capabilities = FUNC8(fifo_mem + SVGA_FIFO_CAPABILITIES);

	FUNC0("Fifo max 0x%08x min 0x%08x cap 0x%08x\n",
		 (unsigned int) max,
		 (unsigned int) min,
		 (unsigned int) fifo->capabilities);

	FUNC1(&dev_priv->marker_seq, dev_priv->last_read_seqno);
	FUNC9(dev_priv->last_read_seqno, fifo_mem + SVGA_FIFO_FENCE);
	FUNC7(&fifo->marker_queue);

	return 0;
}