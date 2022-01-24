#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vmw_resource {TYPE_3__* backup; struct vmw_private* dev_priv; } ;
struct vmw_private {int /*<<< orphan*/  binding_mutex; } ;
struct vmw_fence_obj {int dummy; } ;
struct ttm_validate_buffer {int /*<<< orphan*/  bo; } ;
struct TYPE_4__ {scalar_t__ mem_type; } ;
struct TYPE_5__ {TYPE_1__ mem; } ;
struct TYPE_6__ {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VMW_PL_MOB ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vmw_fence_obj*) ; 
 int FUNC5 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct vmw_private*,struct vmw_fence_obj**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_fence_obj**) ; 

__attribute__((used)) static int FUNC8(struct vmw_resource *res,
				bool readback,
				struct ttm_validate_buffer *val_buf)
{
	struct vmw_private *dev_priv = res->dev_priv;
	struct vmw_fence_obj *fence;
	int ret;

	FUNC0(res->backup->base.mem.mem_type != VMW_PL_MOB);

	FUNC2(&dev_priv->binding_mutex);
	ret = FUNC5(res);
	FUNC3(&dev_priv->binding_mutex);

	if (ret)
		return ret;

	(void) FUNC6(NULL, dev_priv,
					  &fence, NULL);
	FUNC4(val_buf->bo, fence);

	if (FUNC1(fence != NULL))
		FUNC7(&fence);

	return 0;
}