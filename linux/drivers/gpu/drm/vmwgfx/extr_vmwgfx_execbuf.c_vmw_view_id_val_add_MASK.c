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
struct vmw_sw_context {int /*<<< orphan*/  man; struct vmw_ctx_validation_info* dx_ctx_node; } ;
struct vmw_resource {int dummy; } ;
struct vmw_ctx_validation_info {int dummy; } ;
typedef  enum vmw_view_type { ____Placeholder_vmw_view_type } vmw_view_type ;

/* Variables and functions */
 int EINVAL ; 
 struct vmw_resource* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct vmw_resource*) ; 
 struct vmw_resource* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vmw_sw_context*,struct vmw_resource*) ; 

__attribute__((used)) static struct vmw_resource *
FUNC4(struct vmw_sw_context *sw_context,
		    enum vmw_view_type view_type, u32 id)
{
	struct vmw_ctx_validation_info *ctx_node = sw_context->dx_ctx_node;
	struct vmw_resource *view;
	int ret;

	if (!ctx_node)
		return FUNC0(-EINVAL);

	view = FUNC2(sw_context->man, view_type, id);
	if (FUNC1(view))
		return view;

	ret = FUNC3(sw_context, view);
	if (ret)
		return FUNC0(ret);

	return view;
}