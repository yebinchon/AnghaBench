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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_base_object {int /*<<< orphan*/  handle; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {struct ttm_base_object base; } ;
struct vmw_buffer_object {int /*<<< orphan*/  base; } ;
struct vmw_user_buffer_object {TYPE_1__ prime; struct vmw_buffer_object vbo; } ;
struct vmw_private {scalar_t__ has_mob; } ;
struct ttm_object_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vmw_user_buffer_object* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ttm_buffer_type ; 
 int FUNC5 (struct ttm_object_file*,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct vmw_private*,struct vmw_buffer_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmw_sys_placement ; 
 int /*<<< orphan*/  vmw_user_bo_destroy ; 
 int /*<<< orphan*/  vmw_user_bo_ref_obj_release ; 
 int /*<<< orphan*/  vmw_user_bo_release ; 
 int /*<<< orphan*/  vmw_vram_sys_placement ; 

int FUNC8(struct vmw_private *dev_priv,
		      struct ttm_object_file *tfile,
		      uint32_t size,
		      bool shareable,
		      uint32_t *handle,
		      struct vmw_buffer_object **p_vbo,
		      struct ttm_base_object **p_base)
{
	struct vmw_user_buffer_object *user_bo;
	int ret;

	user_bo = FUNC2(sizeof(*user_bo), GFP_KERNEL);
	if (FUNC6(!user_bo)) {
		FUNC0("Failed to allocate a buffer.\n");
		return -ENOMEM;
	}

	ret = FUNC7(dev_priv, &user_bo->vbo, size,
			  (dev_priv->has_mob) ?
			  &vmw_sys_placement :
			  &vmw_vram_sys_placement, true,
			  &vmw_user_bo_destroy);
	if (FUNC6(ret != 0))
		return ret;

	FUNC3(&user_bo->vbo.base);
	ret = FUNC5(tfile,
				    size,
				    &user_bo->prime,
				    shareable,
				    ttm_buffer_type,
				    &vmw_user_bo_release,
				    &vmw_user_bo_ref_obj_release);
	if (FUNC6(ret != 0)) {
		FUNC4(&user_bo->vbo.base);
		goto out_no_base_object;
	}

	*p_vbo = &user_bo->vbo;
	if (p_base) {
		*p_base = &user_bo->prime.base;
		FUNC1(&(*p_base)->refcount);
	}
	*handle = user_bo->prime.base.handle;

out_no_base_object:
	return ret;
}