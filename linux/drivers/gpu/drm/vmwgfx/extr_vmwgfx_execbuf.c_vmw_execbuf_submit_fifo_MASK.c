#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vmw_sw_context {int /*<<< orphan*/  res_relocations; TYPE_2__* dx_ctx_node; } ;
struct vmw_private {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct vmw_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_sw_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct vmw_private *dev_priv,
				   void *kernel_commands, u32 command_size,
				   struct vmw_sw_context *sw_context)
{
	void *cmd;

	if (sw_context->dx_ctx_node)
		cmd = FUNC1(dev_priv, command_size,
					  sw_context->dx_ctx_node->ctx->id);
	else
		cmd = FUNC0(dev_priv, command_size);

	if (!cmd)
		return -ENOMEM;

	FUNC3(sw_context);
	FUNC2(cmd, kernel_commands, command_size);
	FUNC5(cmd, &sw_context->res_relocations);
	FUNC6(&sw_context->res_relocations);
	FUNC4(dev_priv, command_size);

	return 0;
}