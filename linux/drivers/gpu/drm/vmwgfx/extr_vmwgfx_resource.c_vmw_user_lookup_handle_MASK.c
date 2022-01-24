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
struct vmw_surface {int dummy; } ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
struct vmw_buffer_object {int dummy; } ;
struct ttm_object_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  user_surface_converter ; 
 struct vmw_surface* FUNC1 (struct vmw_resource*) ; 
 int FUNC2 (struct ttm_object_file*,int /*<<< orphan*/ ,struct vmw_buffer_object**,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vmw_private*,struct ttm_object_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmw_resource**) ; 

int FUNC4(struct vmw_private *dev_priv,
			   struct ttm_object_file *tfile,
			   uint32_t handle,
			   struct vmw_surface **out_surf,
			   struct vmw_buffer_object **out_buf)
{
	struct vmw_resource *res;
	int ret;

	FUNC0(*out_surf || *out_buf);

	ret = FUNC3(dev_priv, tfile, handle,
					      user_surface_converter,
					      &res);
	if (!ret) {
		*out_surf = FUNC1(res);
		return 0;
	}

	*out_surf = NULL;
	ret = FUNC2(tfile, handle, out_buf, NULL);
	return ret;
}