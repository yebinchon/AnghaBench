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
struct vmw_sw_context {int staged_bindings_inuse; int /*<<< orphan*/  ctx_list; int /*<<< orphan*/ * staged_bindings; } ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
struct vmw_ctx_validation_info {int /*<<< orphan*/  head; int /*<<< orphan*/  cur; struct vmw_resource* ctx; int /*<<< orphan*/ * staged; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_resource*) ; 
 int FUNC6 (struct vmw_private*,struct vmw_sw_context*,struct vmw_resource*) ; 

__attribute__((used)) static int FUNC7(struct vmw_private *dev_priv,
				   struct vmw_sw_context *sw_context,
				   struct vmw_resource *res,
				   struct vmw_ctx_validation_info *node)
{
	int ret;

	ret = FUNC6(dev_priv, sw_context, res);
	if (FUNC3(ret != 0))
		goto out_err;

	if (!sw_context->staged_bindings) {
		sw_context->staged_bindings = FUNC4(dev_priv);
		if (FUNC0(sw_context->staged_bindings)) {
			ret = FUNC1(sw_context->staged_bindings);
			sw_context->staged_bindings = NULL;
			goto out_err;
		}
	}

	if (sw_context->staged_bindings_inuse) {
		node->staged = FUNC4(dev_priv);
		if (FUNC0(node->staged)) {
			ret = FUNC1(node->staged);
			node->staged = NULL;
			goto out_err;
		}
	} else {
		node->staged = sw_context->staged_bindings;
		sw_context->staged_bindings_inuse = true;
	}

	node->ctx = res;
	node->cur = FUNC5(res);
	FUNC2(&node->head, &sw_context->ctx_list);

	return 0;

out_err:
	return ret;
}