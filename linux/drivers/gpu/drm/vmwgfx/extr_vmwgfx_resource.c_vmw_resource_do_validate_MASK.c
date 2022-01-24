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
struct vmw_resource {int id; struct vmw_res_func* func; } ;
struct vmw_res_func {int (* create ) (struct vmw_resource*) ;int (* bind ) (struct vmw_resource*,struct ttm_validate_buffer*) ;int /*<<< orphan*/  (* destroy ) (struct vmw_resource*) ;scalar_t__ needs_backup; } ;
struct ttm_validate_buffer {int /*<<< orphan*/ * bo; } ;

/* Variables and functions */
 int FUNC0 (struct vmw_resource*) ; 
 int FUNC1 (struct vmw_resource*,struct ttm_validate_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_resource*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_resource*) ; 

__attribute__((used)) static int FUNC6(struct vmw_resource *res,
				    struct ttm_validate_buffer *val_buf)
{
	int ret = 0;
	const struct vmw_res_func *func = res->func;

	if (FUNC3(res->id == -1)) {
		ret = func->create(res);
		if (FUNC3(ret != 0))
			return ret;
	}

	if (func->bind &&
	    ((func->needs_backup && !FUNC5(res) &&
	      val_buf->bo != NULL) ||
	     (!func->needs_backup && val_buf->bo != NULL))) {
		ret = func->bind(res, val_buf);
		if (FUNC3(ret != 0))
			goto out_bind_failed;
		if (func->needs_backup)
			FUNC4(res);
	}

	return 0;

out_bind_failed:
	func->destroy(res);

	return ret;
}