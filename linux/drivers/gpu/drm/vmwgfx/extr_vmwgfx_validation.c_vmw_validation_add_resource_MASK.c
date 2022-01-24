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
typedef  int u32 ;
struct TYPE_4__ {unsigned long key; } ;
struct vmw_validation_res_node {int first_usage; int dirty_set; int dirty; int /*<<< orphan*/  private; int /*<<< orphan*/  head; int /*<<< orphan*/  res; TYPE_2__ hash; } ;
struct vmw_validation_context {int /*<<< orphan*/  resource_list; int /*<<< orphan*/  resource_ctx_list; scalar_t__ ht; } ;
struct vmw_resource {TYPE_1__* dev_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  has_mob; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int VMW_RES_DIRTY_SET ; 
 int FUNC2 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  vmw_res_context 130 
#define  vmw_res_cotable 129 
#define  vmw_res_dx_context 128 
 int FUNC5 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_resource*) ; 
 struct vmw_validation_res_node* FUNC7 (struct vmw_validation_context*,struct vmw_resource*) ; 
 struct vmw_validation_res_node* FUNC8 (struct vmw_validation_context*,int) ; 

int FUNC9(struct vmw_validation_context *ctx,
				struct vmw_resource *res,
				size_t priv_size,
				u32 dirty,
				void **p_node,
				bool *first_usage)
{
	struct vmw_validation_res_node *node;
	int ret;

	node = FUNC7(ctx, res);
	if (node) {
		node->first_usage = 0;
		goto out_fill;
	}

	node = FUNC8(ctx, sizeof(*node) + priv_size);
	if (!node) {
		FUNC1("Failed to allocate a resource validation entry.\n");
		return -ENOMEM;
	}

	if (ctx->ht) {
		node->hash.key = (unsigned long) res;
		ret = FUNC2(ctx->ht, &node->hash);
		if (ret) {
			FUNC0("Failed to initialize a resource validation "
				  "entry.\n");
			return ret;
		}
	}
	node->res = FUNC6(res);
	if (!node->res)
		return -ESRCH;

	node->first_usage = 1;
	if (!res->dev_priv->has_mob) {
		FUNC4(&node->head, &ctx->resource_list);
	} else {
		switch (FUNC5(res)) {
		case vmw_res_context:
		case vmw_res_dx_context:
			FUNC3(&node->head, &ctx->resource_ctx_list);
			break;
		case vmw_res_cotable:
			FUNC4(&node->head, &ctx->resource_ctx_list);
			break;
		default:
			FUNC4(&node->head, &ctx->resource_list);
			break;
		}
	}

out_fill:
	if (dirty) {
		node->dirty_set = 1;
		/* Overwriting previous information here is intentional! */
		node->dirty = (dirty & VMW_RES_DIRTY_SET) ? 1 : 0;
	}
	if (first_usage)
		*first_usage = node->first_usage;
	if (p_node)
		*p_node = &node->private;

	return 0;
}