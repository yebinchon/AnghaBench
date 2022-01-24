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
struct vmw_sw_context {int cmd_bounce_size; int /*<<< orphan*/ * cmd_bounce; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int) ; 
 int VMWGFX_CMD_BOUNCE_INIT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct vmw_sw_context *sw_context,
				 uint32_t size)
{
	if (FUNC2(sw_context->cmd_bounce_size >= size))
		return 0;

	if (sw_context->cmd_bounce_size == 0)
		sw_context->cmd_bounce_size = VMWGFX_CMD_BOUNCE_INIT_SIZE;

	while (sw_context->cmd_bounce_size < size) {
		sw_context->cmd_bounce_size =
			FUNC0(sw_context->cmd_bounce_size +
				   (sw_context->cmd_bounce_size >> 1));
	}

	FUNC3(sw_context->cmd_bounce);
	sw_context->cmd_bounce = FUNC4(sw_context->cmd_bounce_size);

	if (sw_context->cmd_bounce == NULL) {
		FUNC1("Failed to allocate command bounce buffer.\n");
		sw_context->cmd_bounce_size = 0;
		return -ENOMEM;
	}

	return 0;
}