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
struct vmw_user_resource_conv {scalar_t__ object_type; struct vmw_resource* (* base_obj_to_res ) (struct ttm_base_object*) ;} ;
struct vmw_resource {int /*<<< orphan*/  kref; } ;
struct vmw_private {int dummy; } ;
struct ttm_object_file {int dummy; } ;
struct ttm_base_object {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vmw_resource* FUNC1 (struct ttm_base_object*) ; 
 struct ttm_base_object* FUNC2 (struct ttm_object_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ttm_base_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_base_object**) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct vmw_private *dev_priv,
				    struct ttm_object_file *tfile,
				    uint32_t handle,
				    const struct vmw_user_resource_conv
				    *converter,
				    struct vmw_resource **p_res)
{
	struct ttm_base_object *base;
	struct vmw_resource *res;
	int ret = -EINVAL;

	base = FUNC2(tfile, handle);
	if (FUNC5(base == NULL))
		return -EINVAL;

	if (FUNC5(FUNC3(base) != converter->object_type))
		goto out_bad_resource;

	res = converter->base_obj_to_res(base);
	FUNC0(&res->kref);

	*p_res = res;
	ret = 0;

out_bad_resource:
	FUNC4(&base);

	return ret;
}