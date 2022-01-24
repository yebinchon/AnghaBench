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
typedef  size_t u32 ;
struct vmw_resource {size_t id; int backup_size; int /*<<< orphan*/  hw_destroy; } ;
struct vmw_private {int dummy; } ;
struct vmw_cotable {int scrubbed; int seen_entries; size_t type; struct vmw_resource res; struct vmw_resource* ctx; int /*<<< orphan*/  resource_list; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct TYPE_2__ {int size; size_t min_initial_entries; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vmw_resource* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 TYPE_1__* co_info ; 
 scalar_t__ cotable_acc_size ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_cotable*) ; 
 struct vmw_cotable* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  vmw_cotable_free ; 
 int /*<<< orphan*/  vmw_cotable_func ; 
 int /*<<< orphan*/  vmw_hw_cotable_destroy ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_private*) ; 
 int FUNC9 (struct vmw_private*,struct vmw_resource*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct vmw_resource *FUNC10(struct vmw_private *dev_priv,
				       struct vmw_resource *ctx,
				       u32 type)
{
	struct vmw_cotable *vcotbl;
	struct ttm_operation_ctx ttm_opt_ctx = {
		.interruptible = true,
		.no_wait_gpu = false
	};
	int ret;
	u32 num_entries;

	if (FUNC7(cotable_acc_size == 0))
		cotable_acc_size = FUNC6(sizeof(struct vmw_cotable));

	ret = FUNC4(FUNC8(dev_priv),
				   cotable_acc_size, &ttm_opt_ctx);
	if (FUNC7(ret))
		return FUNC0(ret);

	vcotbl = FUNC3(sizeof(*vcotbl), GFP_KERNEL);
	if (FUNC7(!vcotbl)) {
		ret = -ENOMEM;
		goto out_no_alloc;
	}

	ret = FUNC9(dev_priv, &vcotbl->res, true,
				vmw_cotable_free, &vmw_cotable_func);
	if (FUNC7(ret != 0))
		goto out_no_init;

	FUNC1(&vcotbl->resource_list);
	vcotbl->res.id = type;
	vcotbl->res.backup_size = PAGE_SIZE;
	num_entries = PAGE_SIZE / co_info[type].size;
	if (num_entries < co_info[type].min_initial_entries) {
		vcotbl->res.backup_size = co_info[type].min_initial_entries *
			co_info[type].size;
		vcotbl->res.backup_size =
			(vcotbl->res.backup_size + PAGE_SIZE - 1) & PAGE_MASK;
	}

	vcotbl->scrubbed = true;
	vcotbl->seen_entries = -1;
	vcotbl->type = type;
	vcotbl->ctx = ctx;

	vcotbl->res.hw_destroy = vmw_hw_cotable_destroy;

	return &vcotbl->res;

out_no_init:
	FUNC2(vcotbl);
out_no_alloc:
	FUNC5(FUNC8(dev_priv), cotable_acc_size);
	return FUNC0(ret);
}