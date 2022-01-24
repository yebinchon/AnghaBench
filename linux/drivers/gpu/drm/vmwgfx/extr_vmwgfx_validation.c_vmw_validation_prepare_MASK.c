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
struct vmw_validation_context {struct mutex* res_mutex; } ;
struct mutex {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct mutex*) ; 
 int FUNC1 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_validation_context*) ; 
 int FUNC4 (struct vmw_validation_context*,int) ; 
 int FUNC5 (struct vmw_validation_context*,int) ; 
 int FUNC6 (struct vmw_validation_context*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_validation_context*,int) ; 
 int FUNC8 (struct vmw_validation_context*,int) ; 

int FUNC9(struct vmw_validation_context *ctx,
			   struct mutex *mutex,
			   bool intr)
{
	int ret = 0;

	if (mutex) {
		if (intr)
			ret = FUNC1(mutex);
		else
			FUNC0(mutex);
		if (ret)
			return -ERESTARTSYS;
	}

	ctx->res_mutex = mutex;
	ret = FUNC6(ctx, intr);
	if (ret)
		goto out_no_res_reserve;

	ret = FUNC4(ctx, intr);
	if (ret)
		goto out_no_bo_reserve;

	ret = FUNC5(ctx, intr);
	if (ret)
		goto out_no_validate;

	ret = FUNC8(ctx, intr);
	if (ret)
		goto out_no_validate;

	return 0;

out_no_validate:
	FUNC3(ctx);
out_no_bo_reserve:
	FUNC7(ctx, true);
out_no_res_reserve:
	if (mutex)
		FUNC2(mutex);

	return ret;
}