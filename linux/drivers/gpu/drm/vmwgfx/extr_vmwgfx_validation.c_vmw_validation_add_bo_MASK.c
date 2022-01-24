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
struct vmw_validation_context {int /*<<< orphan*/  bo_list; scalar_t__ ht; } ;
struct ttm_validate_buffer {int /*<<< orphan*/  head; scalar_t__ num_shared; int /*<<< orphan*/  bo; } ;
struct TYPE_2__ {unsigned long key; } ;
struct vmw_validation_bo_node {int as_mob; int cpu_blit; struct ttm_validate_buffer base; TYPE_1__ hash; } ;
struct vmw_buffer_object {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ESRCH ; 
 int FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vmw_validation_bo_node* FUNC4 (struct vmw_validation_context*,struct vmw_buffer_object*) ; 
 struct vmw_validation_bo_node* FUNC5 (struct vmw_validation_context*,int) ; 

int FUNC6(struct vmw_validation_context *ctx,
			  struct vmw_buffer_object *vbo,
			  bool as_mob,
			  bool cpu_blit)
{
	struct vmw_validation_bo_node *bo_node;

	bo_node = FUNC4(ctx, vbo);
	if (bo_node) {
		if (bo_node->as_mob != as_mob ||
		    bo_node->cpu_blit != cpu_blit) {
			FUNC0("Inconsistent buffer usage.\n");
			return -EINVAL;
		}
	} else {
		struct ttm_validate_buffer *val_buf;
		int ret;

		bo_node = FUNC5(ctx, sizeof(*bo_node));
		if (!bo_node)
			return -ENOMEM;

		if (ctx->ht) {
			bo_node->hash.key = (unsigned long) vbo;
			ret = FUNC1(ctx->ht, &bo_node->hash);
			if (ret) {
				FUNC0("Failed to initialize a buffer "
					  "validation entry.\n");
				return ret;
			}
		}
		val_buf = &bo_node->base;
		val_buf->bo = FUNC3(&vbo->base);
		if (!val_buf->bo)
			return -ESRCH;
		val_buf->num_shared = 0;
		FUNC2(&val_buf->head, &ctx->bo_list);
		bo_node->as_mob = as_mob;
		bo_node->cpu_blit = cpu_blit;
	}

	return 0;
}