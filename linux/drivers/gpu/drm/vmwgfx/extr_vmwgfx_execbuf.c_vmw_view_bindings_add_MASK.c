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
typedef  scalar_t__ uint32 ;
typedef  size_t u32 ;
struct vmw_sw_context {int dummy; } ;
struct vmw_resource {int dummy; } ;
struct vmw_ctx_validation_info {int /*<<< orphan*/  staged; int /*<<< orphan*/  ctx; } ;
struct TYPE_2__ {int bt; struct vmw_resource* res; int /*<<< orphan*/  ctx; } ;
struct vmw_ctx_bindinfo_view {size_t slot; TYPE_1__ bi; scalar_t__ shader_slot; } ;
typedef  enum vmw_view_type { ____Placeholder_vmw_view_type } vmw_view_type ;
typedef  enum vmw_ctx_binding_type { ____Placeholder_vmw_ctx_binding_type } vmw_ctx_binding_type ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct vmw_resource*) ; 
 int FUNC1 (struct vmw_resource*) ; 
 scalar_t__ SVGA3D_INVALID_ID ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct vmw_ctx_validation_info* FUNC3 (struct vmw_sw_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,size_t) ; 
 struct vmw_resource* FUNC5 (struct vmw_sw_context*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct vmw_sw_context *sw_context,
				 enum vmw_view_type view_type,
				 enum vmw_ctx_binding_type binding_type,
				 uint32 shader_slot,
				 uint32 view_ids[], u32 num_views,
				 u32 first_slot)
{
	struct vmw_ctx_validation_info *ctx_node = FUNC3(sw_context);
	u32 i;

	if (!ctx_node)
		return -EINVAL;

	for (i = 0; i < num_views; ++i) {
		struct vmw_ctx_bindinfo_view binding;
		struct vmw_resource *view = NULL;

		if (view_ids[i] != SVGA3D_INVALID_ID) {
			view = FUNC5(sw_context, view_type,
						   view_ids[i]);
			if (FUNC0(view)) {
				FUNC2("View not found.\n");
				return FUNC1(view);
			}
		}
		binding.bi.ctx = ctx_node->ctx;
		binding.bi.res = view;
		binding.bi.bt = binding_type;
		binding.shader_slot = shader_slot;
		binding.slot = first_slot + i;
		FUNC4(ctx_node->staged, &binding.bi,
				shader_slot, binding.slot);
	}

	return 0;
}