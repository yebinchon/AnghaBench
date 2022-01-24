#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct vmw_sw_context {int /*<<< orphan*/  man; int /*<<< orphan*/  dx_ctx_node; TYPE_1__* fp; int /*<<< orphan*/  ctx; } ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfile; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vmw_resource*) ; 
 int FUNC1 (struct vmw_resource*) ; 
 scalar_t__ SVGA3D_INVALID_ID ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  VMW_RES_DIRTY_SET ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  user_context_converter ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_sw_context*,struct vmw_resource*) ; 
 int FUNC6 (struct vmw_sw_context*,struct vmw_resource*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmw_res_dx_context ; 
 struct vmw_resource* FUNC8 (struct vmw_private*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct vmw_private *dev_priv,
				   struct vmw_sw_context *sw_context,
				   uint32_t handle)
{
	struct vmw_resource *res;
	int ret;
	unsigned int size;

	if (handle == SVGA3D_INVALID_ID)
		return 0;

	size = FUNC7(dev_priv, vmw_res_dx_context);
	ret = FUNC9(sw_context->ctx, size);
	if (ret)
		return ret;

	res = FUNC8
		(dev_priv, sw_context->fp->tfile, handle,
		 user_context_converter);
	if (FUNC0(res)) {
		FUNC2("Could not find or user DX context 0x%08x.\n",
			       (unsigned int) handle);
		return FUNC1(res);
	}

	ret = FUNC6(sw_context, res, VMW_RES_DIRTY_SET);
	if (FUNC3(ret != 0))
		return ret;

	sw_context->dx_ctx_node = FUNC5(sw_context, res);
	sw_context->man = FUNC4(res);

	return 0;
}