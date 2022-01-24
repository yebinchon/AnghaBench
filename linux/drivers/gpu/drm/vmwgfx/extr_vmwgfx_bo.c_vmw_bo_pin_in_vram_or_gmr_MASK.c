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
struct ttm_operation_ctx {int member_0; int member_1; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ttm_buffer_object*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*) ; 
 int FUNC4 (struct ttm_buffer_object*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_buffer_object*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vmw_private*) ; 
 int /*<<< orphan*/  vmw_vram_gmr_placement ; 
 int /*<<< orphan*/  vmw_vram_placement ; 

int FUNC10(struct vmw_private *dev_priv,
			      struct vmw_buffer_object *buf,
			      bool interruptible)
{
	struct ttm_operation_ctx ctx = {interruptible, false };
	struct ttm_buffer_object *bo = &buf->base;
	int ret;
	uint32_t new_flags;

	ret = FUNC5(&dev_priv->reservation_sem, interruptible);
	if (FUNC7(ret != 0))
		return ret;

	FUNC9(dev_priv);

	ret = FUNC2(bo, interruptible, false, NULL);
	if (FUNC7(ret != 0))
		goto err;

	if (buf->pin_count > 0) {
		ret = FUNC1(&vmw_vram_gmr_placement, &bo->mem,
					&new_flags) == true ? 0 : -EINVAL;
		goto out_unreserve;
	}

	ret = FUNC4(bo, &vmw_vram_gmr_placement, &ctx);
	if (FUNC0(ret == 0) || ret == -ERESTARTSYS)
		goto out_unreserve;

	ret = FUNC4(bo, &vmw_vram_placement, &ctx);

out_unreserve:
	if (!ret)
		FUNC8(buf, true);

	FUNC3(bo);
err:
	FUNC6(&dev_priv->reservation_sem);
	return ret;
}