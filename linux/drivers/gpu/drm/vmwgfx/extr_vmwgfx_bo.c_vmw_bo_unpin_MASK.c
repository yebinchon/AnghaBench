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
struct vmw_private {int /*<<< orphan*/  reservation_sem; } ;
struct ttm_buffer_object {int dummy; } ;
struct vmw_buffer_object {struct ttm_buffer_object base; } ;

/* Variables and functions */
 int FUNC0 (struct ttm_buffer_object*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_buffer_object*,int) ; 

int FUNC6(struct vmw_private *dev_priv,
		 struct vmw_buffer_object *buf,
		 bool interruptible)
{
	struct ttm_buffer_object *bo = &buf->base;
	int ret;

	ret = FUNC2(&dev_priv->reservation_sem, interruptible);
	if (FUNC4(ret != 0))
		return ret;

	ret = FUNC0(bo, interruptible, false, NULL);
	if (FUNC4(ret != 0))
		goto err;

	FUNC5(buf, false);

	FUNC1(bo);

err:
	FUNC3(&dev_priv->reservation_sem);
	return ret;
}