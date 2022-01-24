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
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct vmw_user_buffer_object {TYPE_1__ prime; } ;
struct ttm_object_file {int dummy; } ;
struct ttm_buffer_object {scalar_t__ destroy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EPERM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_object_file*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ vmw_user_bo_destroy ; 
 struct vmw_user_buffer_object* FUNC4 (struct ttm_buffer_object*) ; 

int FUNC5(struct ttm_buffer_object *bo,
			      struct ttm_object_file *tfile)
{
	struct vmw_user_buffer_object *vmw_user_bo;

	if (FUNC3(bo->destroy != vmw_user_bo_destroy))
		return -EPERM;

	vmw_user_bo = FUNC4(bo);

	/* Check that the caller has opened the object. */
	if (FUNC1(FUNC2(tfile, &vmw_user_bo->prime.base)))
		return 0;

	FUNC0("Could not grant buffer access.\n");
	return -EPERM;
}