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
struct vmw_temp_set_context {int dummy; } ;
struct vmw_fifo_state {int capabilities; int dx; int reserved_size; int /*<<< orphan*/  fifo_mutex; int /*<<< orphan*/  rwsem; scalar_t__ using_bounce_buffer; int /*<<< orphan*/ * dynamic_buffer; } ;
struct vmw_private {int /*<<< orphan*/ * mmio_virt; struct vmw_fifo_state fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SVGA_FIFO_CAP_RESERVE ; 
 int SVGA_FIFO_MAX ; 
 int SVGA_FIFO_MIN ; 
 int SVGA_FIFO_NEXT_CMD ; 
 int SVGA_FIFO_RESERVED ; 
 int /*<<< orphan*/  SVGA_SYNC_GENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_fifo_state*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_fifo_state*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct vmw_private *dev_priv, uint32_t bytes)
{
	struct vmw_fifo_state *fifo_state = &dev_priv->fifo;
	u32  *fifo_mem = dev_priv->mmio_virt;
	uint32_t next_cmd = FUNC9(fifo_mem + SVGA_FIFO_NEXT_CMD);
	uint32_t max = FUNC9(fifo_mem + SVGA_FIFO_MAX);
	uint32_t min = FUNC9(fifo_mem + SVGA_FIFO_MIN);
	bool reserveable = fifo_state->capabilities & SVGA_FIFO_CAP_RESERVE;

	if (fifo_state->dx)
		bytes += sizeof(struct vmw_temp_set_context);

	fifo_state->dx = false;
	FUNC0((bytes & 3) != 0);
	FUNC0(bytes > fifo_state->reserved_size);

	fifo_state->reserved_size = 0;

	if (fifo_state->using_bounce_buffer) {
		if (reserveable)
			FUNC7(fifo_state, fifo_mem,
					  next_cmd, max, min, bytes);
		else
			FUNC8(fifo_state, fifo_mem,
					   next_cmd, max, min, bytes);

		if (fifo_state->dynamic_buffer) {
			FUNC5(fifo_state->dynamic_buffer);
			fifo_state->dynamic_buffer = NULL;
		}

	}

	FUNC1(&fifo_state->rwsem);
	if (fifo_state->using_bounce_buffer || reserveable) {
		next_cmd += bytes;
		if (next_cmd >= max)
			next_cmd -= max - min;
		FUNC2();
		FUNC10(next_cmd, fifo_mem + SVGA_FIFO_NEXT_CMD);
	}

	if (reserveable)
		FUNC10(0, fifo_mem + SVGA_FIFO_RESERVED);
	FUNC2();
	FUNC4(&fifo_state->rwsem);
	FUNC6(dev_priv, SVGA_SYNC_GENERIC);
	FUNC3(&fifo_state->fifo_mutex);
}