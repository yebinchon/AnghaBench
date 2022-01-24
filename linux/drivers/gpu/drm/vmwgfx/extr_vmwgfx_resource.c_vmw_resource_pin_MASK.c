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
struct vmw_resource {scalar_t__ pin_count; TYPE_1__* func; struct vmw_buffer_object* backup; struct vmw_private* dev_priv; } ;
struct vmw_private {int /*<<< orphan*/  reservation_sem; int /*<<< orphan*/  cmdbuf_mutex; } ;
struct vmw_buffer_object {int /*<<< orphan*/  base; int /*<<< orphan*/  pin_count; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_2__ {int /*<<< orphan*/  backup_placement; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_buffer_object*,int) ; 
 int FUNC8 (struct vmw_resource*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vmw_resource*,int,int,int,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (struct vmw_resource*,int) ; 

int FUNC11(struct vmw_resource *res, bool interruptible)
{
	struct ttm_operation_ctx ctx = { interruptible, false };
	struct vmw_private *dev_priv = res->dev_priv;
	int ret;

	FUNC5(&dev_priv->reservation_sem, interruptible);
	FUNC0(&dev_priv->cmdbuf_mutex);
	ret = FUNC8(res, interruptible, false);
	if (ret)
		goto out_no_reserve;

	if (res->pin_count == 0) {
		struct vmw_buffer_object *vbo = NULL;

		if (res->backup) {
			vbo = res->backup;

			FUNC2(&vbo->base, interruptible, false, NULL);
			if (!vbo->pin_count) {
				ret = FUNC4
					(&vbo->base,
					 res->func->backup_placement,
					 &ctx);
				if (ret) {
					FUNC3(&vbo->base);
					goto out_no_validate;
				}
			}

			/* Do we really need to pin the MOB as well? */
			FUNC7(vbo, true);
		}
		ret = FUNC10(res, interruptible);
		if (vbo)
			FUNC3(&vbo->base);
		if (ret)
			goto out_no_validate;
	}
	res->pin_count++;

out_no_validate:
	FUNC9(res, false, false, false, NULL, 0UL);
out_no_reserve:
	FUNC1(&dev_priv->cmdbuf_mutex);
	FUNC6(&dev_priv->reservation_sem);

	return ret;
}