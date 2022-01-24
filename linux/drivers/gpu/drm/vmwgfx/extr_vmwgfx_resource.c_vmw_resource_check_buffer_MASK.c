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
struct ww_acquire_ctx {int dummy; } ;
struct vmw_resource {int backup_dirty; TYPE_2__* backup; TYPE_1__* func; } ;
struct ttm_validate_buffer {int /*<<< orphan*/ * bo; int /*<<< orphan*/  head; scalar_t__ num_shared; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct list_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct TYPE_3__ {int /*<<< orphan*/  backup_placement; scalar_t__ needs_backup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ww_acquire_ctx*,struct list_head*) ; 
 int FUNC6 (struct ww_acquire_ctx*,struct list_head*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**) ; 
 int FUNC9 (struct vmw_resource*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vmw_resource*) ; 

__attribute__((used)) static int
FUNC11(struct ww_acquire_ctx *ticket,
			  struct vmw_resource *res,
			  bool interruptible,
			  struct ttm_validate_buffer *val_buf)
{
	struct ttm_operation_ctx ctx = { true, false };
	struct list_head val_list;
	bool backup_dirty = false;
	int ret;

	if (FUNC7(res->backup == NULL)) {
		ret = FUNC9(res, interruptible);
		if (FUNC7(ret != 0))
			return ret;
	}

	FUNC0(&val_list);
	FUNC2(&res->backup->base);
	val_buf->bo = &res->backup->base;
	val_buf->num_shared = 0;
	FUNC1(&val_buf->head, &val_list);
	ret = FUNC6(ticket, &val_list, interruptible, NULL,
				     true);
	if (FUNC7(ret != 0))
		goto out_no_reserve;

	if (res->func->needs_backup && !FUNC10(res))
		return 0;

	backup_dirty = res->backup_dirty;
	ret = FUNC4(&res->backup->base,
			      res->func->backup_placement,
			      &ctx);

	if (FUNC7(ret != 0))
		goto out_no_validate;

	return 0;

out_no_validate:
	FUNC5(ticket, &val_list);
out_no_reserve:
	FUNC3(val_buf->bo);
	val_buf->bo = NULL;
	if (backup_dirty)
		FUNC8(&res->backup);

	return ret;
}