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
struct vmw_sw_context {int /*<<< orphan*/  ctx; } ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
struct vmw_buffer_object {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (struct vmw_sw_context*,struct vmw_resource*) ; 
 int FUNC1 (struct vmw_private*,struct vmw_sw_context*,int /*<<< orphan*/ *,struct vmw_buffer_object**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,struct vmw_buffer_object*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct vmw_private *dev_priv,
				     struct vmw_sw_context *sw_context,
				     struct vmw_resource *res, uint32_t *buf_id,
				     unsigned long backup_offset)
{
	struct vmw_buffer_object *vbo;
	void *info;
	int ret;

	info = FUNC0(sw_context, res);
	if (!info)
		return -EINVAL;

	ret = FUNC1(dev_priv, sw_context, buf_id, &vbo);
	if (ret)
		return ret;

	FUNC2(sw_context->ctx, info, vbo,
					 backup_offset);
	return 0;
}