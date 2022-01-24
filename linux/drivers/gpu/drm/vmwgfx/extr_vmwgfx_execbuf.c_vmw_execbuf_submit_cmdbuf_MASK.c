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
struct vmw_private {int /*<<< orphan*/  cman; } ;
struct vmw_cmdbuf_header {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVGA3D_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (struct vmw_sw_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmw_cmdbuf_header*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct vmw_cmdbuf_header*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct vmw_private *dev_priv,
				     struct vmw_cmdbuf_header *header,
				     u32 command_size,
				     struct vmw_sw_context *sw_context)
{
	u32 id = ((sw_context->dx_ctx_node) ? sw_context->dx_ctx_node->ctx->id :
		  SVGA3D_INVALID_ID);
	void *cmd = FUNC2(dev_priv->cman, command_size, id, false,
				       header);

	FUNC0(sw_context);
	FUNC3(cmd, &sw_context->res_relocations);
	FUNC4(&sw_context->res_relocations);
	FUNC1(dev_priv->cman, command_size, header, false);

	return 0;
}