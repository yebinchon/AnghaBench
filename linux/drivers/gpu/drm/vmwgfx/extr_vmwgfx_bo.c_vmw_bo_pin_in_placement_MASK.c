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
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_private {int /*<<< orphan*/  reservation_sem; } ;
struct ttm_buffer_object {int /*<<< orphan*/  mem; } ;
struct vmw_buffer_object {scalar_t__ pin_count; struct ttm_buffer_object base; } ;
struct ttm_placement {int dummy; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ttm_placement*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ttm_buffer_object*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*) ; 
 int FUNC3 (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_operation_ctx*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_buffer_object*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_private*) ; 

int FUNC9(struct vmw_private *dev_priv,
			    struct vmw_buffer_object *buf,
			    struct ttm_placement *placement,
			    bool interruptible)
{
	struct ttm_operation_ctx ctx = {interruptible, false };
	struct ttm_buffer_object *bo = &buf->base;
	int ret;
	uint32_t new_flags;

	ret = FUNC4(&dev_priv->reservation_sem, interruptible);
	if (FUNC6(ret != 0))
		return ret;

	FUNC8(dev_priv);

	ret = FUNC1(bo, interruptible, false, NULL);
	if (FUNC6(ret != 0))
		goto err;

	if (buf->pin_count > 0)
		ret = FUNC0(placement, &bo->mem,
					&new_flags) == true ? 0 : -EINVAL;
	else
		ret = FUNC3(bo, placement, &ctx);

	if (!ret)
		FUNC7(buf, true);

	FUNC2(bo);

err:
	FUNC5(&dev_priv->reservation_sem);
	return ret;
}