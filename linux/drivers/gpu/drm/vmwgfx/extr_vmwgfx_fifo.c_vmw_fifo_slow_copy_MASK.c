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
typedef  int /*<<< orphan*/  u32 ;
struct vmw_fifo_state {scalar_t__* static_buffer; scalar_t__* dynamic_buffer; } ;

/* Variables and functions */
 int SVGA_FIFO_NEXT_CMD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vmw_fifo_state *fifo_state,
			       u32  *fifo_mem,
			       uint32_t next_cmd,
			       uint32_t max, uint32_t min, uint32_t bytes)
{
	uint32_t *buffer = (fifo_state->dynamic_buffer != NULL) ?
	    fifo_state->dynamic_buffer : fifo_state->static_buffer;

	while (bytes > 0) {
		FUNC2(*buffer++, fifo_mem + (next_cmd >> 2));
		next_cmd += sizeof(uint32_t);
		if (FUNC1(next_cmd == max))
			next_cmd = min;
		FUNC0();
		FUNC2(next_cmd, fifo_mem + SVGA_FIFO_NEXT_CMD);
		FUNC0();
		bytes -= sizeof(uint32_t);
	}
}