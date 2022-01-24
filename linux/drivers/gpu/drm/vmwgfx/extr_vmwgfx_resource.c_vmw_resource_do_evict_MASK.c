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
struct ww_acquire_ctx {int dummy; } ;
struct vmw_resource {int res_dirty; int backup_dirty; struct vmw_res_func* func; } ;
struct vmw_res_func {int (* unbind ) (struct vmw_resource*,int,struct ttm_validate_buffer*) ;int (* destroy ) (struct vmw_resource*) ;int /*<<< orphan*/  needs_backup; int /*<<< orphan*/  may_evict; } ;
struct ttm_validate_buffer {scalar_t__ num_shared; int /*<<< orphan*/ * bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct vmw_resource*,int,struct ttm_validate_buffer*) ; 
 int FUNC2 (struct vmw_resource*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ww_acquire_ctx*,struct ttm_validate_buffer*) ; 
 int FUNC5 (struct ww_acquire_ctx*,struct vmw_resource*,int,struct ttm_validate_buffer*) ; 
 scalar_t__ FUNC6 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_resource*) ; 

__attribute__((used)) static int FUNC8(struct ww_acquire_ctx *ticket,
				 struct vmw_resource *res, bool interruptible)
{
	struct ttm_validate_buffer val_buf;
	const struct vmw_res_func *func = res->func;
	int ret;

	FUNC0(!func->may_evict);

	val_buf.bo = NULL;
	val_buf.num_shared = 0;
	ret = FUNC5(ticket, res, interruptible, &val_buf);
	if (FUNC3(ret != 0))
		return ret;

	if (FUNC3(func->unbind != NULL &&
		     (!func->needs_backup || FUNC6(res)))) {
		ret = func->unbind(res, res->res_dirty, &val_buf);
		if (FUNC3(ret != 0))
			goto out_no_unbind;
		FUNC7(res);
	}
	ret = func->destroy(res);
	res->backup_dirty = true;
	res->res_dirty = false;
out_no_unbind:
	FUNC4(ticket, &val_buf);

	return ret;
}